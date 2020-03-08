import django_tables2 as tables
from .models import *
from django_tables2.utils import A


class PADataTable(tables.Table):

    class Meta:
        attrs = {
            'class':'table table-responsive-sm table-bordered table-striped table-sm'
        }
        model = PAData
        fields = ('zipcode', 'state', 'utility_name', 'company_name', 'plan_type', 'phone_number', 'price_rate','product_last_update')

