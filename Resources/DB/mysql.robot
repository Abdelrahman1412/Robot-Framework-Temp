*** Settings ***
Library    DatabaseLibrary
Library    String
Library    Dialogs

*** Variables ***
${DB_MODULE_NAME} =
${DB_NAME} =
${DB_USERNAME} =
${DB_PASSWORD} =
${DB_HOST} =
${DB_PORT} =

*** Keywords ***
# TODO    Move this to a whatever
Connect
    connect to database    ${DB_MODULE_NAME}    ${DB_NAME}  ${DB_USERNAME}  ${DB_PASSWORD}  ${DB_HOST}  ${DB_PORT}

Disconnect
    disconnect from database