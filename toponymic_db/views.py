import json

from django.core import serializers
from django.db.models import Count
from django.shortcuts import render
from django.views import generic
from .models import GeoNames, GeoObjects, Maps
from .models import MotivationTypes


class IndexView(generic.TemplateView):
    template_name = 'toponymic_db/index.html'
    context_object_name = 'geonames'

    def get_context_data(self, **kwargs):
        geonames = GeoNames.objects.select_related('source_id', 'motivation_id', 'geoobject_id', 'map_id').exclude(
            geoobject_id__latitude=0).order_by('geoname_id')
        print(geonames.query)
        context = super(IndexView, self).get_context_data(**kwargs)
        context['geonames'] = serializers.serialize('json', geonames)
        context['geoobjects'] = serializers.serialize('json', [geoname.geoobject_id for geoname in geonames])
        context['geomaps'] = serializers.serialize('json', [geoname.map_id if geoname.map_id is not None else Maps() for geoname in geonames if geoname ])
        return context


class GeonameListView(generic.ListView):
    template_name = 'toponymic_db/geoname_list.html'
    context_object_name = 'geonames'

    def get_queryset(self):
        return GeoNames.objects.order_by('geoname').prefetch_related('source_id', 'motivation_id')


def statsView(request):
    qs = MotivationTypes.objects.annotate(num_locations=Count('geonames')).order_by('-num_locations')
    motivations_locations = []
    for element in qs:
        if element.num_locations > 0:
            motivations_locations.append([element.motivation_short_name_en,
                                          element.num_locations])
    return render(request, 'toponymic_db/stats.html', {'values': motivations_locations})


class DetailView(generic.DetailView):
    model = GeoNames
    template_name = 'toponymic_db/detail.html'



