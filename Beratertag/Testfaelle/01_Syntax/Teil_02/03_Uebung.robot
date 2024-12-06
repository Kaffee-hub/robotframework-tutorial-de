*** Comments ***
Übungsaufgabe zu 'Grundlagen der RobotFramework-Syntax II'

1. Greife auf das 2. Element des Dictionaries zu und gebe es aus
2. Greife auf das 3. Element der Liste zu und gebe es aus
3. Gebe jedes Element der Liste in einer FOR-Schleife aus
4. Gebe jedes Element der Liste nur dann aus, wenn es Imbus entspricht
    Tipp: FOR-Schleife und IF-Schleife kombinieren

*** Variables ***
&{dictionary}
...    element_1=Kartoffeln
...    element_2=Bio-Eier
...    element_3=Kaffeebohnen

@{list}
...    Imbus
...    Beratertag
...    Nikolaus
...    2024

*** Test Cases ***
Loesung 1
    Log To Console    \n
    Log To Console    ${dictionary['element_2']}

Loesung 2
    Log To Console    \n
    Log To Console    ${list[2]}

Loesung 3
    Log To Console    \n
    FOR  ${item}  IN  @{list}
            Log To Console    message=${item}
    END

Loesung 4
    Log To Console    \n
    FOR  ${item}  IN  @{list}
        IF    '${item}' == 'Imbus'
            Log To Console    message=${item}
        END
    END

Loesung 5
    Log To Console    \n
    FOR  ${item}  IN  &{dictionary}
        VAR    ${value}    ${item[1]}
        IF    '${value}' == 'Kaffeebohnen'
            Log To Console    message=${item}
        END
    END

loesung 6
    Log To Console    message=abc ${list[0]} xyz