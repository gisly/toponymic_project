from toponymic_db.models import GeoTypes
from toponymic_db.models import Language
evenki = Language.objects.all()[0]
types = GeoTypes.objects.all()
for type in types:
    print(str(type.geotype_language) + "  " + str(type.geotype_id))