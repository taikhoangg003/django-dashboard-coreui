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

    # Filter by plan_type
    all_plan_types = PAData.objects.values('plan_type').order_by('plan_type').distinct()
    plan_type_choices = []
    for item in all_plan_types:
        plan_type_choices.append((item['plan_type'], item['plan_type']))
    
    plan_type = django_filters.ChoiceFilter(label="Plan type", choices=plan_type_choices)


    # Filter by term_length
    all_term_lengths = PAData.objects.values('term_length').order_by('term_length').distinct()
    term_length_choices = []
    for item in all_term_lengths:
        term_length_choices.append((item['term_length'], item['term_length']))
    
    term_length = django_filters.ChoiceFilter(label="Term length", choices=term_length_choices)

    # Filter by monthly_fee
    all_monthly_fees = PAData.objects.values('monthly_fee').order_by('monthly_fee').distinct()
    monthly_fee_choices = []
    for item in all_monthly_fees:
        monthly_fee_choices.append((item['monthly_fee'], item['monthly_fee']))
    
    monthly_fee = django_filters.ChoiceFilter(label="Month free", choices=monthly_fee_choices)

    