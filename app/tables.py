import django_tables2 as tables
from .models import *
from django_tables2.utils import A


class PADataTable(tables.Table):
    
    company_name  = tables.LinkColumn(
        'pa_detail', 
        text=lambda record: record.company_name, 
        args=[A('pk')],
        footer=lambda table: 'Total: {} records'.format(len(table.data))
        )

    # defind hindden column for export data
    
    utility_code = tables.Column(visible=False)
    enrollment_fee = tables.Column(visible=False)
    cancellation_fee = tables.Column(visible=False)
    renewable = tables.Column(visible=False)
    phone_number = tables.Column(visible=False)
    signup_url = tables.Column(visible=False)
    site_name = tables.Column(visible=False)
    domain_name = tables.Column(visible=False)
    
    product_info = tables.Column(visible=False)

    last_scraped = tables.DateTimeColumn(format ='M d,Y-h:iA')
    
    class Meta:
        attrs = {
            'class':'table table-responsive-sm table-bordered table-striped table-sm'
        }
        model = PAData
        fields = (
            'zipcode',
            'state', 
            'utility_name',
            'utility_code', 
            'company_name', 
            'price_rate',
            'plan_type',
            'monthly_fee', 
            'enrollment_fee',
            'cancellation_fee',
            'term_length',
            'renewable',
            'product_info',
            'phone_number',
            'signup_url',
            'site_name',
            'domain_name',
            'product_last_update',
            'last_scraped',
        )

