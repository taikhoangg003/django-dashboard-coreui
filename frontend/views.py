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

from app.models import *
# from .filters import *
# from .tables import *
from pytz import timezone
import time
from datetime import date
from datetime import datetime


class HomepageView(TemplateView):
    template_name = "frontend/index.html"
    
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        today = date.today()
        print(datetime.now())
        context['covid_europe'] = Covid.objects.filter(date=today, group__iexact='Europe')
        context['covid_africa'] = Covid.objects.filter(date=today, group__iexact='Africa')
        context['covid_north_america'] = Covid.objects.filter(date=today, group__iexact='North America')
        context['covid_asia'] = Covid.objects.filter(date=today, group__iexact='Asia')
        context['covid_oceania'] = Covid.objects.filter(date=today, group__iexact='Australia/Oceania')
        context['world_status'] = Covid.objects.filter(date=today, group__iexact='World').get()
        
        return context
