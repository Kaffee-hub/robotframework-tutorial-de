*** Comments ***
Übungsaufgabe zu 'Grundlagen der RobotFramework-Syntax I'

1. Gebe deinen Namen in der Konsole aus
2. Gebe die Anzahl Zeichen im Wort 'Beratertag 06.12.2024' aus
3. Prüfe zwei Werte auf Gleichheit (Wort, Zahl etc.)


*** Settings ***
Library     String


*** Variables ***
${REFERENCE_TEXT}    Beratertag 06.12.2024
${NUMBER_WITHOUT_BASE}    10


*** Test Cases ***
Loesung 1
    Log To Console    message=
    Log To Console    message=deinen Namen = Knut

Loesung 2
    Log To Console    message=
    ${MessageLength}    Get Length    item=${REFERENCE_TEXT}
    Log To Console    ${MessageLength} Zeichen enthalten in '${REFERENCE_TEXT}'
    Log    ${MessageLength} Zeichen enthalten in '${REFERENCE_TEXT}'

Loesung 3
    Should Be Equal    first=123    second=123
    Should Be Equal As Numbers    first=1.23    second=01.23
    # Convert To Integer
    Should Be Equal As Integers   first=${NUMBER_WITHOUT_BASE}    second=10    base=16
