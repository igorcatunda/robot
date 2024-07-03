*** Settings ***
Library    AppiumLibrary

*** Variables ***
${DEVICE_NAME}    emulator-5554
${TARGET}    http://192.168.1.8:4723 
${PLATFORM_NAME}    android
${AUTOMATION_NAME}    UiAutomator2
${PKG}    com.nubankui
${ATV}    .MainActivity
${HEADER_NUBANK}    xPath=.//android.widget.TextView[@text="NuConta"]
${INVITE_FRIENDS}    xPath=.//android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup[1]
${CHARGE}    xPath=.//android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup[2]
${DEPOSIT}    xPath=.//android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup[3]
${TRANSFER}    xPath=.//android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup[4]

*** Keywords ***
Abrir Aplicativo
    Open Application    ${TARGET}    platformName=${PLATFORM_NAME}     deviceName=${DEVICE_NAME}    automationName=${AUTOMATION_NAME}     appPackage=${PKG}    appActivity=${ATV}        noReset=true
    Wait Until Element Is Visible    ${HEADER_NUBANK}

Fechar Aplicativo
    Close All Applications
