from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.select import Select
import selenium
import pytesseract
import tensorflow
import subprocess
import PIL
import tkinter
import random
import bs4
import time


class mailbreaker():


    def login(self, email, password):
        self.xemail = email
        self.xpass = password
        driver = webdriver.Chrome(executable_path="/Users/johnkeller/PycharmProjects/WebScraper/venv/chromedriver")

        driver.get('https://passport.yandex.com/auth?from=mail&origin=hostroot_homer_auth_com&retpath=https%3A%2F%2Fmail.yandex.com%2F&backpath=https%3A%2F%2Fmail.yandex.com%3Fnoretpath%3D1')


        time.sleep(2)
        login = driver.find_element_by_id('passp-field-login')
        login.send_keys(self.xemail)
        time.sleep(1)
        login.send_keys(Keys.ENTER)
        time.sleep(3)
        passw = driver.find_element_by_id('passp-field-passwd')
        passw.send_keys(self.xpass)
        passw.send_keys(Keys.ENTER)
        #Captcha breaker goes here
        driver.implicitly_wait(1000)
        not_now = driver.find_element_by_xpath('//*[@id="root"]/div/div/div[2]/div/div/div[3]/div[2]/div/form/div[3]/button')
        not_now.click()





        time.sleep(2)
        #not_now = driver.find_element_by_xpath('//*[@id="root"]/div/div/div[2]/div/div/div[3]/div[2]/div/form/div[3]/button')
        #not_now.click()
        #time.sleep(2)


        driver.execute_script('window.open("{}","_blank");'.format('https://www.amazon.com/'))
        amazon = driver.window_handles[1]
        driver.switch_to_window(amazon)
        time.sleep(random.randint(4, 8))
        signin = driver.find_element_by_id('nav-link-accountList')
        signin.click()
        time.sleep(random.randint(3, 5))
        email2 = driver.find_element_by_id('ap_email')
        email2.send_keys(self.xemail)
        time.sleep(random.randint(2, 4))
        email2.send_keys(Keys.ENTER)
        time.sleep(random.randint(2, 6))
        pass2 = driver.find_element_by_id('ap_password')
        pass2.send_keys(self.xpass)
        pass2.send_keys(Keys.ENTER)
        time.sleep(random.randint(2, 7))
        countine1 = driver.find_element_by_class_name('a-button-input')
        countine1.click()
        time.sleep(random.randint(2, 6))

        #switching back to yandex
        yandex = driver.window_handles[0]
        driver.switch_to_window(yandex)
        time.sleep(3)
        first_email = driver.find_element_by_class_name('ns-view-infoline-box ns-view-id-54')
        first_email.click()
        copy_code = driver.find_element_by_xpath('//*[@id="9b88d29b317b7a1e820e243e141b51e5verificationMsg"]/p[2]')
        driver.switch_to_window(amazon)


        # new window will open up and will go to amazon to login


        time.sleep(1000)





breaker = mailbreaker()
breaker.login('user', 'password')



