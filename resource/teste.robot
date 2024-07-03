*** Settings ***
Library    AppiumLibrary
Library    XML
Suite Setup   Abrir Aplicativo 
Resource    setup.robot



*** Test Cases ***
Exibir Saldo
    Click Element    accessibility_id=show-balance

    Element Text Should Be    accessibility_id=user-balance    R$ 5.500,00

Clicar invite
    Click Element    ${INVITE_FRIENDS}
    Wait Until Element Is Visible   xPath=.//android.widget.TextView[@text=""]
    Click Element    xPath=.//android.widget.TextView[@text=""]

Clicar cobrar
    Click Element    ${CHARGE}
    Wait Until Element Is Visible   xPath=.//android.widget.TextView[@text=""]
    Click Element    xPath=.//android.widget.TextView[@text=""]

Clicar deposito
    Click Element    ${DEPOSIT}
    Wait Until Element Is Visible   xPath=.//android.widget.TextView[@text=""]
    Click Element    xPath=.//android.widget.TextView[@text=""]
Clicar transferencia
    Click Element    ${TRANSFER}
    Wait Until Element Is Visible   xPath=.//android.widget.TextView[@text=""]
    Click Element    xPath=.//android.widget.TextView[@text=""]
