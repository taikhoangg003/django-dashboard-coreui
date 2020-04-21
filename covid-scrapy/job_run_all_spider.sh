#!/bin/bash
echo "Run the EnergyChoiceOhio Gas scraper" 
cd /home/adtuan/covid24/covid-scrapy
nohup /home/adtuan/covid24/covid-scrapy/scraper_env/bin/python3 run_scraper.py &> /home/adtuan/covid24/covid-scrapy/run_scraper.out &
 