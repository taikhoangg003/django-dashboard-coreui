# -*- encoding: utf-8 -*-
"""
License: MIT
Copyright (c) 2019 - present AppSeed.us
"""

from django.db import models
import uuid

# Create your models here.


class Covid(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(verbose_name='Name', max_length=25, blank=True, null=True)
    group = models.CharField(verbose_name='Group by country or city', max_length=25, blank=True, null=True)
    confirmed = models.BigIntegerField(verbose_name='Confirmed', default=0 ,blank=True, null=True)
    confirmed_changed = models.FloatField(verbose_name='Confirmed Change Today', blank=True, null=True)
    

    recovered = models.BigIntegerField(verbose_name='Recovered', default=0 ,blank=True, null=True)
    recovered_changed = models.FloatField(verbose_name='Recovered Change Today', blank=True, null=True)

    deaths = models.BigIntegerField(verbose_name='Deaths', default=0 ,blank=True, null=True)
    deaths_changed = models.FloatField(verbose_name='Deaths Change Today', blank=True, null=True)

    tests = models.BigIntegerField(verbose_name='Tests', default=0 ,blank=True, null=True)
    
    date = models.DateField(auto_now=True)
    
    ref_url = models.CharField(verbose_name='Refernce url', max_length=500, blank=True, null=True )
    created_at = models.DateTimeField(auto_now_add=True)
    created_by = models.CharField(max_length=50, blank=True, null=True)
    last_scraped = models.DateTimeField(auto_now=True)
    modified_at = models.DateTimeField(auto_now=True)
    modified_by = models.CharField(max_length=50, blank=True, null=True)
    scraped_key = models.CharField(max_length=50, blank=True, null=True)
    table_name = models.CharField(max_length=65, blank=True, null=True)
    
    
    def __str__(self):
        return self.company_name
    
    class Meta:
        
        ordering = ['confirmed', 'deaths', 'recovered', 'tests']