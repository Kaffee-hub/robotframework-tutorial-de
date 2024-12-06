*** Comments ***
Übungsaufgabe zu 'Keywords in Robotframework'

0. Führe den Testfall aus zur Validierung
1. Extrahiere die Keywords aus den Testfällen
2. Erstelle die Keywords in der Keyword-Section
    - Übergebe Arguments an die Keywords
3. Sorge dafür, dass der Testfall wie vorab funktioniert

*** Variables ***
#${input_1}    42
#${input_2}    4711
#${input_3}    Hello World!

*** Settings ***
Library    String

*** Test Cases ***
Extrahiere Keywords von mir 1
    VAR    ${input_1}    42
    VAR    ${input_2}    4711
    VAR    ${input_3}    Hello World!

    # Multipliziere zwei Zahlen
    ${ergebnis}    Multipliziere zwei Zahlen    ${input_1}    ${input_2}
    Log To Console    \n${ergebnis}
    Should Be Equal As Integers    ${ergebnis}    197862

Extrahiere Keywords von mir 2
    VAR    ${input_1}    42
    VAR    ${input_2}    4711
    VAR    ${input_3}    Hello World!

    # Verbinde Strings mit Underscore
    ${string}    Verbinde Strings mit Underscore    ${input_1}    ${input_2}
    Log To Console    \n${string}
    Should Be Equal As Strings    ${string}    42__4711

Extrahiere Keywords von mir 3
    VAR    ${input_1}    42
    VAR    ${input_2}    4711
    VAR    ${input_3}    Hello World!

    # Subtrahiere zwei Zahlen und gebe Hex-Wert aus
    ${hex}    Subtrahiere zwei Zahlen und gebe Hex-Wert aus    ${input_1}    ${input_2}
    Log To Console    \n0x${hex}
    Should Be Equal As Strings    ${hex}    123D

Extrahiere Keywords von mir 4
    VAR    ${input_1}    42
    VAR    ${input_2}    4711
    VAR    ${input_3}    Hello World!

    # Ersetze ${suchwort} mit ${ersatzwort} in ${string}
    #${string}    Ersetze suchwort mit ersatzwort in string    string=${input_3}    suchwort=World    ersatzwort=Imbus
    ${string}    Ersetze2 World mit Imbus in ${input_3}
    Log To Console    \n${string}
    Should Be Equal As Strings    ${string}    Hello Imbus!

*** Keywords ***
Multipliziere zwei Zahlen
    [Arguments]    ${a}    ${b}            # Erwartetes Argument vom Keyword
    ${ergebnis}    Evaluate    ${a} * ${b}
    RETURN    ${ergebnis}


Verbinde Strings mit Underscore
    [Arguments]    ${string1}    ${string2}
    ${string}    Catenate     SEPARATOR=__    ${string1}    ${string2}
    RETURN    ${string}


Subtrahiere zwei Zahlen und gebe Hex-Wert aus
    [Arguments]    ${zahl1}    ${zahl2}
    ${ergebnis}    Evaluate    ${zahl2} - ${zahl1}
    ${hex}    Convert To Hex    ${ergebnis}
    RETURN    ${hex}


Ersetze ${suchwort} mit ${ersatzwort} in ${string}
    [Arguments]    ${suchwort}    ${ersatzwort}    ${string}
    ${result}    Replace String    string=${string}    search_for=${suchwort}    replace_with=${ersatzwort}
    RETURN    ${result}

Ersetze2 ${suchwort} mit ${ersatzwort} in ${string}
    ${result}    Replace String    string=${string}    search_for=${suchwort}    replace_with=${ersatzwort}
    RETURN    ${result}
