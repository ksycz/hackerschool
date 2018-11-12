*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../../Keywords/Eshop/Eshop_Keywords.txt
Variables	../../Objects/Eshop/Eshop_Objects.py
Resource    ../../Resources/Eshop/Sorting_Filtering_Variables.txt
Test Setup    Open Women Section
Test Teardown    Capture Screenshot And Close Browser

*** Test Cases ***
Check If Sorting Dropdown Is Not Empty
    Unfold Sorting Dropdown
    Element Should Contain    ${Sorting_dropdown}    ${SORT_LOWEST_PRICE}
    
Sort By All Categories
    [Template]    Sorting By All Categories
    ${Sorting_dropdown}    ${CAT1}
    ${Sorting_dropdown}    ${CAT2}
    ${Sorting_dropdown}    ${CAT3}
    ${Sorting_dropdown}    ${CAT4}
    ${Sorting_dropdown}    ${CAT5}
    ${Sorting_dropdown}    ${CAT6}
    ${Sorting_dropdown}    ${CAT7}
    
Filter By Main Sections - Tops
    Click Element        ${Tops_section}
    Element Should Contain    ${Filter_category}    ${T-SHIRTS_CAT}
    
Filter By Main Sections - Dresses / Evening Dresses
    Click Element    ${Dresses_section}
    Click Element    ${Evening_dresses_subsection}
    Element Should Contain    ${Category_name}    ${EVENING_DRESSES_CAT_NAME}   
    
Filter By Categories - Dresses
    Filter By Dresses Category
    Location Should Contain    ${FILTER_CAT_URL_DRESSES}

Disable Previously Added Filtering
    Filter By Dresses Category
    Disable Filter
    Wait Until Page Does Not Contain    ${WOMEN_SECTION_URL}
    
Filter By Combaining A Few Filters
    Filter By Dresses Category
    Click Element    id=layered_id_attribute_group_1
    Click Element    name=layered_id_attribute_group_11
    Wait Until Element Contains    ${Product_counter}    ${COUNTER_MESSAGE}
    Location Should Contain    ${FILTER_DRESS_S_BLACK}