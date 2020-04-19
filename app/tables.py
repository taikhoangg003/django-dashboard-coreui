import django_tables2 as tables
from .models import *
from django_tables2.utils import A


class CovidTable(tables.Table):
    
    
    class Meta:
        attrs = {
            'class':'table table-responsive-sm table-bordered table-striped table-sm'
        }
        model = Covid
        