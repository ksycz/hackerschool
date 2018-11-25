*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../../Keywords/Eshop/Eshop_Keywords.txt
Variables	../../Objects/Eshop/Eshop_Objects.py
Resource    ../../Resources/Eshop/Sorting_Filtering_Variables.txt
Test Setup    Open Automation Practice Website
Test Teardown    Capture Screenshot And Close Browser

*** Test Cases ***
Open Woman Section
    Click The Woman Tab
    Check If Website Title Is Correct       

Check If Sorting Dropdown Is Not Empty
    Click The Woman Tab
    Unfold Sorting Dropdown
    Check If Sorting Dropdown Contains At Least One Item
    
# Sort By All Categories
    # [Template]    Sorting By All Categories
    # Click The Woman Tab
    # Sorting By All Categories
    
Sort By Lowest Price First
    Click The Woman Tab
    Unfold Sorting Dropdown
    Select Price: Lowest First From Sorting Dropdown
    Check If The Last Price Is Greater Than The First One    ${FIRST_PRICE}    ${LAST_PRICE}
    
Sort By In Stock
    Click The Woman Tab
    Unfold Sorting Dropdown
    Select In Stock From Sorting Dropdown
    Check If The In Stock Item Is Visible
    
Filter By Main Sections - Tops
    Click The Woman Tab
    Click The Top Tab
    Check If The Main Filter Contains T-Shirt
    
Filter By Categories - Dresses
    Click The Woman Tab
    Click The Dresses Tab
    Tick The Dresses Checkbox
    Check If Url Contains Dresses Category
    
Filter By Main Sections - Dresses > Evening Dresses
    Click The Woman Tab
    Click The Dresses Tab
    Click The Evening Dresses Tab
    Check If Category Name Contains Evening Dresses

Set Filter And Disable It
    Click The Woman Tab
    Click The Dresses Tab
    Tick The Dresses Checkbox
    Disable Dresses Filter
    Check If Url Contains Woman Section
    
Filter By Combaining A Few Filters
    Click The Woman Tab
    Click The Dresses Tab
    Tick The Dresses Checkbox
    Tick The S Size
    Click The Beige Color
    Check If The Number Of Beige S Dresses Is Correct