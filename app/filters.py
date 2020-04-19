from .models import *
import django_filters

class CovidFilter(django_filters.FilterSet):

    class Meta:
        model = Covid
        fields = {
            'name': ['icontains'],
        }
    
    

    # Filter by group
    all_groups = Covid.objects.all().values('group').order_by('group').distinct()
    group_choices = []
    for item in all_groups:
        group_choices.append((item['group'], item['group']))
    
    group = django_filters.ChoiceFilter(label="Group", choices=group_choices)
