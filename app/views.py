# -*- encoding: utf-8 -*-
"""
License: MIT
Copyright (c) 2019 - present AppSeed.us
"""

from django.contrib.auth.decorators import login_required
from django.shortcuts import render, get_object_or_404, redirect
from django.template import loader
from django.http import HttpResponse
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView, DetailView

from django_tables2.export.export import TableExport
from django_tables2 import RequestConfig
import django_tables2 as tables
from django_tables2.export.views import ExportMixin

from .models import *
from .filters import *
from .tables import *
from pytz import timezone
import time

@login_required(login_url="/login/")
def pages(request):
    context = {}
    # All resource paths end in .html.
    # Pick out the html file name from the url. And load that template.
    try:

        load_template = request.path.split('/')[-1]
        template = loader.get_template('pages/' + load_template)
        return HttpResponse(template.render(context, request))

    except:

        template = loader.get_template( 'pages/error-404.html' )
        return HttpResponse(template.render(context, request))


# # @login_required(login_url="/login/")
# # def index(request):
# #     return render(request, "index.html")

# class DashboardView(LoginRequiredMixin, TemplateView):
#     template_name = "app/index.html"
    
    
#     def get_context_data(self, **kwargs):
#         context = super().get_context_data(**kwargs)
        

#         return context

# class CovidListView(LoginRequiredMixin, ExportMixin, tables.SingleTableView):
#     model = Covid
    
#     table_class = CovidTable
#     context_object_name = 'data_table'
#     template_name = "app/covid_list.html"
#     my_export_data = None
#     export_name='Covid_' + time.strftime('%Y%m%d_%H_%M_%S')
    

#     def get_context_data(self, **kwargs):
#         list = Covid.objects.all()
#         filter = CovidFilter(self.request.GET, queryset=list)
#         data_table = CovidTable(filter.qs)
        
#         RequestConfig(self.request).configure(data_table)
#         per_page = self.request.GET.get('per_page', 100)
#         data_table.paginate(page=self.request.GET.get('page', 1), per_page=per_page)
#         self.my_export_data = data_table
#         context = super(CovidListView, self).get_context_data(**kwargs) 
#         context['data_table'] = data_table
#         context['filter'] = filter
        
#         return context
    
#     def create_export(self, export_format):
        
#         exporter = self.export_class(
#             export_format=export_format,
#             table=self.my_export_data,
#             # exclude_columns=self.exclude_columns,
#             # dataset_kwargs=self.get_dataset_kwargs(),
#         )

#         return exporter.response(filename=self.get_export_filename(export_format))
