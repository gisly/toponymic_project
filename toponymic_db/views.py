from django.db.models import Count
from django.shortcuts import render
from django.views import generic
from .models import GeoNames
from .models import MotivationTypes


class IndexView(generic.ListView):
    template_name = 'toponymic_db/index.html'
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



