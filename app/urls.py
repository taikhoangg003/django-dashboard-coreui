# -*- encoding: utf-8 -*-

from django.urls import path, re_path
#from app import views

urlpatterns = [
    # Matches any html file 
    #re_path(r'^.*\.html', views.pages, name='pages'),      
    path('', views.DashboardView.as_view(), name='home'),
#     path('pa/list', views.PADataListView.as_view(), name='pa_list'),
#     path('pa/detail/<pk>', views.PADataDetailView.as_view(), name='pa_detail'),
    
#     path('ohio/list', views.OhioListView.as_view(), name='ohio_list'),
#     path('ohio/detail/<pk>', views.OhioDetailView.as_view(), name='ohio_detail'),

#     path('ohio-gas/list', views.OhioGasListView.as_view(), name='ohio_gas_list'),
#     path('ohio-gas/detail/<pk>', views.OhioGasDetailView.as_view(), name='ohio_gas_detail'),

#     path('p2choose/list', views.P2ChooseListView.as_view(), name='p2choose_list'),
#     path('p2choose/detail/<pk>', views.P2ChooseDetailView.as_view(), name='p2choose_detail'),
    
]

