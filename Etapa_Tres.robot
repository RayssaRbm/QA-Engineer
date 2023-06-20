** Settings **
Library  SeleniumLibrary


** Variables **

#Botões
${Botao_Pesquisar}    //*[@id="__next"]/div[1]/div[1]/section/div[2]/div[3]/div/button/span
${Botao_Confirmar}    //*[@id="__next"]/div[1]/div[1]/section/div[2]/div[3]/div/button
${Botao_Cookies_Ok}    //*[@id="onetrust-accept-btn-handler"]
${Botao_Ordenar}    //*[@id="sorting-selector"]

#Campos
${Campo_InserirNome}    //input[@id='input-auto-complete'] 
${Campo_Data}    //section[@class='my-6 2xl:my-12']//div[@class='mx-auto Wrapper_box__4K_5d px-4 2xs:px-5 l:px-10 2xl:px-5']

#Valores
${Selecao_Data_Inicio}    //*[@id="__next"]/div[1]/div[1]/section/div[2]/div[3]/div/div[2]/div/div/div/div[2]/div/div[1]/div[2]/button[32]/time
${Selecao_Data_Fim}    //*[@id="__next"]/div[1]/div[1]/section/div[2]/div[3]/div/div[2]/div/div/div/div[2]/div/div[1]/div[2]/button[34]/time
${Selecao_Ordenar}    //*[@id="sorting-selector"]/option[2]
${Primeiro_Nome}    //*[@id="__next"]/div/div[1]/main/div[3]/div[1]/div/div[2]/div/div/ol/li[1]/div/article/div[2]/div[1]/section/h2/button
${Primeira_Avaliacao}    //*[@id="__next"]/div/div[1]/main/div[3]/div[1]/div/div[2]/div/div/ol/li[1]/div/article/div[2]/div[1]/button[2]/span[1]/span/span/strong
${Primeiro_Valor}    //*[@id="__next"]/div/div[1]/main/div[3]/div[1]/div/div[2]/div/div/ol/li[1]/div/article/div[2]/div[2]/div[1]/div/div[2]/div[1]/div


** Keywords **

Abro o site do Trivago
    Open Browser  http://www.trivago.com.br  chrome
    Sleep    2s
    Wait Until Element Is Visible    ${Botao_Cookies_Ok}
    Maximize Browser Window
    Click Button    ${Botao_Cookies_Ok}

Então pesquiso por Nome   
    Wait Until Element Is Visible    ${Campo_InserirNome}
    Input Text    ${Campo_InserirNome}    Manaus
    Sleep    2s
    Press Keys    ${Campo_InserirNome}    ENTER
    Sleep    2s
           
E insiro a data de entrada e saída 
    Wait Until Element Is Visible    ${Selecao_Data_Inicio}
    Click Element    ${Selecao_Data_Inicio}
    Wait Until Element Is Visible    ${Selecao_Data_Fim}
    Click Element    ${Selecao_Data_Fim}
    Wait Until Element Is Visible    ${Botao_Pesquisar}
    Click Element    ${Botao_Pesquisar}
    Sleep    2s
    Wait Until Page Contains    Avaliação
        
E realizo a ordenação por avaliação
    Sleep    35s
    Wait Until Element Is Visible    ${Botao_Ordenar}
    Click Element    ${Botao_Ordenar}
    Wait Until Element Is Visible    ${Selecao_Ordenar}
    Click Element    ${Selecao_Ordenar}
    Sleep    6s   
    
Então verifico os resultados
    ${Nome}   Get Text    ${Primeiro_Nome}
    ${Avaliacao}   Get Text    ${Primeira_Avaliacao}
    ${Valor}   Get Text    ${Primeiro_Valor}
             

** Test Cases **

Cenário 1: Realizar busca, ordenar e validar retorno
    Abro o site do Trivago
    Então pesquiso por Nome
    E insiro a data de entrada e saída 
    E realizo a ordenação por avaliação
    Então verifico os resultados