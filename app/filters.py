from .models import *
import django_filters

class PADataFilter(django_filters.FilterSet):
    
    class Meta:
        model = PAData
        fields = {
            # 'code': ['icontains'],
            # 'bu_name': ['icontains'],
            # 'bc_effect_date' : ['year__gt', 'year__lt', ],
        }
    
    
    
    company_name = django_filters.CharFilter(
        label='Company', 
        lookup_expr='icontains'
        )
    
    # Filter by zipcode
    all_zipcodes = PAData.objects.values('zipcode').order_by('zipcode').distinct()
    zipcode_choices = []
    for item in all_zipcodes:
        zipcode_choices.append((item['zipcode'], item['zipcode']))
    
    zipcode = django_filters.ChoiceFilter(label="Zipcode", choices=zipcode_choices)

    # Filter by state
    all_states = PAData.objects.values('state').order_by('state').distinct()
    state_choices = []
    for item in all_states:
        state_choices.append((item['state'], item['state']))
    
    state = django_filters.ChoiceFilter(label="State", choices=state_choices)

    # Filter by utility_name
    all_utility_names = PAData.objects.values('utility_name').order_by('utility_name').distinct()
    utility_name_choices = []
    for item in all_utility_names:
        utility_name_choices.append((item['utility_name'], item['utility_name']))
    
    utility_name = django_filters.ChoiceFilter(label="Utility name", choices=utility_name_choices)
    
    
    
    # Filter by utility_code
    all_utility_codes = PAData.objects.values('utility_code').order_by('utility_code').distinct()
    utility_code_choices = []
    for item in all_utility_codes:
        utility_code_choices.append((item['utility_code'], item['utility_code']))

    utility_code = django_filters.ChoiceFilter(label="Utility code", choices=utility_code_choices)