#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jul  7 14:09:26 2017

@author: saksham
"""

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
import time
 
# Replace below path with the absolute path
# to chromedriver in your computer
fo=open("C:\\Users\\HP-15\\Desktop\\hello.txt","a")
for i in range(3):
    fo.write("\nStart: ")
    fo.write(time.ctime())
    driver = webdriver.Chrome('C:\\Users\\HP-15\\Desktop\\chromedriver')
    driver.get("http://www.facebook.com/9gag/")
    assert "Facebook" in driver.title
    
    driver.implicitly_wait(10) # seconds
    #mc=driver.find_element_by_id("mainContainer")
    start=time.time()
    
    while(int(time.time()-start)<=15):
        time.sleep(1)
        driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
        #    mc.send_keys(Keys.DOWN)
    driver.close()
    fo.write("\t\tEnd: ")
    fo.write(time.ctime())
    time.sleep(10)

fo.close()




'''
driver = webdriver.Chrome('/Users/hitansh/Downloads/chromedriver')
driver.get("https://www.facebook.com/sarcasmLOL/")
assert "Facebook" in driver.title

driver.implicitly_wait(5) # seconds
#mc=driver.find_element_by_id("mainContainer")
start=time.time()

while(int(time.time()-start)<=15):
    time.sleep(1)
    driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
    #    mc.send_keys(Keys.DOWN)
driver.close()
'''
