** Settings **
Library  SeleniumLibrary

** Variables **

#Botões
${Botao_Buscar}    //*[@id="btn_pesquisar"]

#Campos
${Campo_Inserir}   //*[@id="endereco"] 


** Keywords **

Abro o site dos Correios
    Open Browser    http://www.buscacep.correios.com.br    chrome
    Maximize Browser Window
    Wait Until Page Contains    Busca CEP

E insiro o valor CEP
    Wait Until Element Is Visible    ${Campo_Inserir}
    Input Text    ${Campo_Inserir}    69005-040
    Click Button    ${Botao_Buscar}

Então busca por CEP é retornada
    Wait Until Page Contains    Rua Miranda Leão
    Capture Page Screenshot
    Close Browser
        
E insiro o valor Nome
    Wait Until Element Is Visible    ${Campo_Inserir}
    Input Text    ${Campo_Inserir}    Lojas Bemol
    Click Button    ${Botao_Buscar}

Então busca por Nome é retornada
    Wait Until Page Contains    Rua Miranda Leão, 41
    Capture Page Screenshot
    Close Browser
    

** Test Cases **

Cenário 1: Realizar busca por CEP
    Abro o site dos Correios
    E insiro o valor CEP
    Então busca por CEP é retornada

Cenário 2: Realizar busca por Nome
    Abro o site dos Correios
    E insiro o valor Nome
    Então busca por Nome é retornada