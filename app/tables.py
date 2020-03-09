import django_tables2 as tables
from .models import *
from django_tables2.utils import A


class PADataTable(tables.Table):
    company_name = tables.TemplateColumn('<a data-toggle="modal" data-target="#myModal" id="{{record.id}}" style="padding: 0 5px" href="#{{record.id}}" onclick="view_detail(\'{{record.id}}\')">{{record.company_name}}</a>')
    company_name  = tables.LinkColumn('pa_detail', text=lambda record: record.company_name, args=[A('pk')])

    class Meta:
        attrs = {
            'class':'table table-responsive-sm table-bordered table-striped table-sm'
        }
        model = PAData
        fields = ('zipcode', 'state', 'utility_name', 'company_name', 'plan_type', 'phone_number', 'price_rate','product_last_update')

