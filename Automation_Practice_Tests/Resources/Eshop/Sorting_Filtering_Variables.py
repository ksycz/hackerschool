*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SORT_LOWEST_PRICE}    Price: Lowest first
${WOMEN_SECTION_URL}    http://automationpractice.com/index.php?id_category=3&controller=category#
${FILTER_CAT_URL_DRESSES}    http://automationpractice.com/index.php?id_category=3&controller=category#/categories-dresses   
${EVENING_DRESSES_CAT_NAME}    EVENING DRESSES 
${CAT1}    Price: Lowest first
${CAT2}    Price: Highest first
${CAT3}    Product Name: A to Z
${CAT4}    Product Name: Z to A
${CAT5}    In stock
${CAT6}    Reference: Lowest first
${CAT7}    Reference: Highest first
${T-SHIRTS_CAT}    T-shirts
${COUNTER_MESSAGE}    There is 1 product.
${FILTER_DRESS_S_BLACK}     http://automationpractice.com/index.php?id_category=8&controller=category#/size-s/color-black