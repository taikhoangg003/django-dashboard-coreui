#!/bin/bash
echo "Run the EnergyChoiceOhio Gas scraper" 
cd /home/prating/prating-scrapy/prating
nohup /home/prating/prating-scrapy/prating/env/bin/python3 run_ohio_gas_spd.py &> /home/prating/prating-scrapy/prating/log_ohio_gas_spd.out &
 