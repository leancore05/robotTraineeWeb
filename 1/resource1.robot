*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${BROWSER}    chrome
${URL}    https://www.amazon.com.br/

*** Keywords ***
Acessar a pagina da Amazon
    Open Browser    url=${URL}    browser=${BROWSER}
    Sleep    20

Pesquisar por celulares
   
Validar o resultado