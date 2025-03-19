*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${BROWSER}    chrome
${URL}    https://www.saucedemo.com/
${USERNAME}       standard_user
${PASSWORD}       secret_sauce
${USERNAME_FIELD}  user-name
${PASSWORD_FIELD}  password
${LOGIN_BUTTON}    login-button
${LABEL}        class=app_logo
${MOCHILA}      add-to-cart-sauce-labs-backpack
${CARRINHO}     shopping_cart_container
${CHECKOUT}     checkout
${FIRST_NAME}       first-name
${PRIMEIRO_NOME}    Pablo
${LAST_NAME}        last-name
${ULTIMO_NOME}      Escobar
${ZIP_POSTAL_CODE}      postal-code
${CEP}      91040440
${CONTINUE}     continue
${FINISH}       finish
${AGRADECIMENTO}    class=complete-header
${VOLTA_PARA_HOME}  back-to-products

*** Keywords ***
Acessar a pagina da Saucedemo
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window
    Sleep    5
    Close Browser

Fazer login com sucesso
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible       ${USERNAME_FIELD}
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Wait Until Element Is Visible       ${PASSWORD_FIELD}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Wait Until Element Is Visible       ${LABEL}
    Element Should Contain      ${LABEL}        Swag Labs
    Sleep    10
    Close Browser

Adicionar um item ao carrinho
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible       ${USERNAME_FIELD}
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Wait Until Element Is Visible       ${PASSWORD_FIELD}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Click Element    ${MOCHILA}
    Click Element    ${CARRINHO}
    Click Element    ${CHECKOUT}
    Input Text    ${FIRST_NAME}     ${PRIMEIRO_NOME}
    Input Text    ${LAST_NAME}      ${ULTIMO_NOME}
    Input Text    ${ZIP_POSTAL_CODE}    ${CEP}
    Click Element   ${CONTINUE}
    Click Element   ${FINISH}
    Element Should Contain      ${AGRADECIMENTO}        Thank you for your order!
    Click Element   ${VOLTA_PARA_HOME}
    Sleep    10
    Close Browser