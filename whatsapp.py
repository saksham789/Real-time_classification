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

 
# Replace below path with the absolute path
# to chromedriver in your computer

for i in range(1):
    
    driver = webdriver.Chrome('C:\\Users\\HP-15\\Desktop\\chromedriver')
    


    driver.get("https://web.whatsapp.com/")
    wait = WebDriverWait(driver, 120)
 
# Replace 'Friend's Name' with the name of your friend 
# or the name of a group 
    target = '"Rishab"'
# Replace the below string with your own message
    string = "Thanxx"
    x_arg = '//span[contains(@title,' + target + ')]'
    group_title = wait.until(EC.presence_of_element_located((By.XPATH, x_arg)))
    group_title.click()
    inp_xpath = '//div[@class="input"][@dir="auto"][@data-tab="1"]'
    input_box = wait.until(EC.presence_of_element_located((By.XPATH, inp_xpath)))
    for j in range(400):
        
        
        for i in range(10):
            input_box.send_keys(string + Keys.ENTER)
    
    
    
    
    driver.close()
    
    
