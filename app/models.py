# -*- encoding: utf-8 -*-
"""
License: MIT
Copyright (c) 2019 - present AppSeed.us
"""

from django.db import models
from django.contrib.auth.models import User

# Create your models here.

from django.db import models


class PAData(models.Model):
    sku = models.CharField(verbose_name='Sku', max_length=125, blank=True, null=True)
    name = models.CharField(verbose_name='Name', max_length=225, blank=True, null=True)
    company = models.CharField(verbose_name='Company', max_length=125, blank=True, null=True)
    brand = models.CharField(verbose_name='Brand', max_length=125, blank=True, null=True)
    interspar_url = models.URLField(verbose_name='AT01 - Interspar', max_length=500, blank=True, null=True )
    billa_url = models.URLField(verbose_name='AT02 - Billa', max_length=500, blank=True, null=True )
    alfires_url = models.URLField(verbose_name='AT03 - Alfies', max_length=500, blank=True, null=True )

    urban_url = models.URLField(verbose_name='AT04 - Urban Drink', max_length=500, blank=True, null=True )
    weisshaus_url = models.URLField(verbose_name='AT05 - Weisshaus', max_length=500, blank=True, null=True )
    spirituosenwelt_url = models.URLField(verbose_name='AT06 - Spirituosenwelt', max_length=500, blank=True, null=True )
    expert24_url = models.URLField(verbose_name='AT07 - Expert24', max_length=500, blank=True, null=True )
    # reisenhofer_url = models.URLField(verbose_name='AT08 - Reisenhofer', max_length=500, blank=True, null=True )
    


    created_at = models.DateTimeField(auto_now_add=True)
    created_by = models.CharField(max_length=50, blank=True, null=True)
    modified_at = models.DateTimeField(auto_now=True)
    modified_by = models.CharField(max_length=50, blank=True, null=True)
    child_scraped_key = models.CharField(max_length=50, blank=True, default='')
    last_check_at = models.DateTimeField(auto_now_add=True)
    table_name = models.CharField(max_length=65, blank=True, null=True)
    
    def __str__(self):
        return self.name