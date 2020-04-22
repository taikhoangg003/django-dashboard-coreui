# -*- encoding: utf-8 -*-
"""
License: MIT
Copyright (c) 2019 - present AppSeed.us
"""

from django.urls import path, re_path
from frontend import views

urlpatterns = [

    # The home page
    path('', views.HomepageView.as_view(), name='index'),
]
