import django_tables2 as tables
from .models import *
from django_tables2.utils import A


class CovidTable(tables.Table):
    
    
    class Meta:
        attrs = {
            'class':'table table-responsive-sm table-bordered table-striped table-sm'
        }
        model = Covid
        fields =[
            'name',
            'group',
            'confirmed',
            'confirmed_changed',
            'recovered',
            'recovered_changed',
            'deaths',
            'deaths_changed',
            'tests',
            'date',
        ]