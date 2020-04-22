#!/usr/bin/python3
# -*- coding: utf-8 -*-


import scrapy
import sys
import os

from scrapy.http import Request, FormRequest
from datascraper.items import *
import time
import datetime

import logging
import re
import csv
import json
import math
from hashlib import md5

from scrapy.loader import ItemLoader
from scrapy.utils.response import open_in_browser
from decouple import config

from lxml import html
from lxml import etree
from urllib.parse import urljoin


logger = logging.getLogger(__name__)
DEBUG = config('DEBUG', False)

def readCsv_to_list_dict(filePath):
    try:
        ''' Read csv file to list of dictionary'''
        if not os.path.isfile(filePath):
            logger.debug('File %s not found', filePath)
            return []

        result = []
        with open(filePath, newline='', encoding="utf-8-sig") as csvfile:
            reader = csv.DictReader(csvfile)
            for row in reader:
                result.append(row)
        return result
    except Exception as ex:
        logger.info(ex)
        return None



class Etuannv(scrapy.Spider):
    name = "worldometers_spd"
    # Config custom setting
    custom_settings = {
        'MYSQL_TABLE'   : 'app_covid',
        'RETRY_TIMES': 5,
        'HTTPERROR_ALLOWED_CODES': [],
        'DOWNLOADER_MIDDLEWARES': {
            # 'proxy_middleware.ProxyFromSettingsMiddleware': 10,
            # 'datascraper.middlewares.MySpiderMiddleware': 100,
            'datascraper.middlewares.RandomUserAgentMiddleware': 400,
            # 'scrapy.spidermiddlewares.httperror.HttpErrorMiddleware': 543,
            # 'scrapy_cloudflare_middleware.middlewares.CloudFlareMiddleware': 560
            # 'rotating_proxies.middlewares.RotatingProxyMiddleware': 610,
            # 'rotating_proxies.middlewares.BanDetectionMiddleware': 620,
            # 'scrapy.downloadermiddlewares.cookies.CookiesMiddleware':543,
        },
        # 'ROTATING_PROXY_BAN_POLICY':'datascraper.middlewares.MyDetectionPolicy',
        'ITEM_PIPELINES': {
            # 'datascraper.pipelines.CsvPipeline': 100,
            'datascraper.pipelines.MySQLPipeline': 200,
        },
        'EXPORT_FIELDS' : [
           
        ]
    }

    # === Init function ===
    def __init__(self, scraped_key=None, *args, **kwargs):
        super(Etuannv, self).__init__(*args, **kwargs)
        
        logger.info(f'==============================> DEBUG = {DEBUG} =================================')
        
        if scraped_key is not None:
            self.scraped_key = scraped_key
        else:
            # Random key
            self.scraped_key = self.name + '_' + datetime.datetime.now().strftime("%Y%m%d")
        


    def start_requests(self):
        """Start request data.
        """
        # Request to get competition
        yield Request(
            url='https://www.worldometers.info/coronavirus/', 
            callback=self.parse,
            dont_filter=True,
        )
    
    def parse(self, response):
        rows = response.xpath("//table[@id='main_table_countries_today']/tbody/tr[td[a[contains(@href,'country')]]]")
        
        for row in rows:
            data_item = ItemLoader(item=CovidItem(), response=response)
            from datetime import date
            today = date.today()
            name = row.xpath("./td[1]/a/text()").get()
            item_id = md5(('{}_{}'.format(name, today)).encode('utf-8')).hexdigest()
            data_item.add_value('id', item_id)
            
            data_item.add_value('name', name)
            data_item.add_value('group', row.xpath("./td[last()]/@data-continent").get())
            data_item.add_value('date', today)
            
            data_item.add_value('total_case', row.xpath("./td[2]/text()").get())
            data_item.add_value('new_case', row.xpath("./td[3]/text()").get())

            data_item.add_value('total_recovered', row.xpath("./td[6]/text()").get())
            
            data_item.add_value('active_case', row.xpath("./td[7]/text()").get())
            
            data_item.add_value('deaths', row.xpath("./td[4]/text()").get())
            data_item.add_value('new_deaths', row.xpath("./td[5]/text()").get())

            data_item.add_value('tests', row.xpath("./td[11]/text()").get())

            
            ts = time.time()
            timestamp = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
            data_item.add_value('created_at', timestamp)
            data_item.add_value('created_by', self.name)
            data_item.add_value('modified_at', timestamp)
            data_item.add_value('last_scraped', timestamp)
            data_item.add_value('modified_by', self.name)
            data_item.add_value('table_name', 'app_covid')
            data_item.add_value('ref_url', response.url)

            yield data_item.load_item()
        
        # Get world info
        row = response.xpath("//table[@id='main_table_countries_today']/tbody/tr[td[text()='World']]")
        
        if row:
            data_item = ItemLoader(item=CovidItem(), response=response)
            from datetime import date
            today = date.today()
            name = row.xpath("./td[1]/text()").get()
            item_id = md5(('{}_{}'.format(name, today)).encode('utf-8')).hexdigest()
            data_item.add_value('id', item_id)
            
            data_item.add_value('name', name)
            data_item.add_value('group', 'World')
            data_item.add_value('date', today)
            
            data_item.add_value('total_case', row.xpath("./td[2]/text()").get())
            data_item.add_value('new_case', row.xpath("./td[3]/text()").get())

            data_item.add_value('total_recovered', row.xpath("./td[6]/text()").get())
            
            data_item.add_value('active_case', row.xpath("./td[7]/text()").get())
            
            data_item.add_value('deaths', row.xpath("./td[4]/text()").get())
            data_item.add_value('new_deaths', row.xpath("./td[5]/text()").get())

            data_item.add_value('tests', row.xpath("./td[11]/text()").get())
            
            
            ts = time.time()
            timestamp = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
            data_item.add_value('created_at', timestamp)
            data_item.add_value('created_by', self.name)
            data_item.add_value('modified_at', timestamp)
            data_item.add_value('last_scraped', timestamp)
            data_item.add_value('modified_by', self.name)
            data_item.add_value('table_name', 'app_covid')
            data_item.add_value('ref_url', response.url)

            yield data_item.load_item()