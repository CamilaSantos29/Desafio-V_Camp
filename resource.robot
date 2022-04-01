***Settings**
Library    SeleniumLibrary

***Variables***

${url}                # acrescentar endereço da página


***Keywords***

User is Registration Form Page
    [Documentation]     esta keyword é responsavel por abrir o site que iremos automatizar
    Go To   ${url}
    Maximize Browser Window

Registration form shoul be ready
   Element Should Contain     titleHeader    #Nome da página de cadastro

User fill the field "${field_name}" with "${field_value}"
   Input Text       ${field_name}          ${field_name}

User click em "Cadastrar"
    Wait Until Element Is Visible    #   ${cadastrar}   - Esses elementos teriam que ser citados acima nas variaveis com os respectivas identidades (xpath,id,css)
    Click Element                    #   ${cadastrar}

System should redirect to sucess page
   Title Should Be            #colocar o título da página de sucesso no cadastro para validação

System should shown na alert about the “name” max length
    Alert Should Be Present    ${name}   should have max length       action=ACCEPT   #${name} - Esses elementos teriam que ser citados acima nas variaveis com os respectivas identidades (xpath,id,css)
    [Teardown]       Close Browser


System should shown na alert about the “name” can no longer contain numbers
    Alert Should Be Present    ${name}   should not contain number     action=ACCEPT  #${name} - Esse elemento teria que ser citados acima nas variaveis com os respectivas identidades (xpath,id,css)
    [Teardown]       Close Browser

System should shown na alert about the “name” can no longer contain special characters
    Alert Should Be Present    ${name}   should not contain special characters   action=ACCEPT  #${name} - Esse elemento teria que ser citados acima nas variaveis com os respectivas identidades (xpath,id,css)
    [Teardown]       Close Browser

System should shown na alert about the “e-mail” must be a valid e-mail address
     Alert Should Be Present    ${email}   should be a valid e-mail   action=ACCEPT  #${email} - Esse elemento teria que ser citados acima nas variaveis com os respectivas identidades (xpath,id,css)
    [Teardown]       Close Browser

System should shown an alert about the “senha” must contain min lenght
    Alert Should Be Present    ${senha}   should have min length  action=ACCEPT   #${senha} - Esse elemento teria que ser citados acima nas variaveis com os respectivas identidades (xpath,id,css)
    [Teardown]       Close Browser

System should shown na alert about the “senha” must contain one special characters
    Alert Should Be Present    ${senha}   should contain min one special characters   action=ACCEPT  #${senha} - Esse elemento teria que ser citados acima nas variaveis com os respectivas identidades (xpath,id,css)
    [Teardown]       Close Browser

System should shown na alert about the “senha” must contain one letter
    Alert Should Be Present    ${senha}   should contain min one letter   action=ACCEPT   #${senha} - Esse elemento teria que ser citados acima nas variaveis com os respectivas identidades (xpath,id,css)
    [Teardown]       Close Browser

System should shown na alert about the “senha” must contain one number
    Alert Should Be Present    ${senha}   should contain min one number   action=ACCEPT    #${senha} - Esse elemento teria que ser citados acima nas variaveis com os respectivas identidades (xpath,id,css)
    [Teardown]       Close Browser

System should shown na alert about the “repetir senha” must be the same as “senha”
    Alert Should Be Present    ${repetirsenha}  should be the same as senha   action=ACCEPT   #${repetir} - Esse elementos teria que ser citados acima nas variaveis com os respectivas identidades (xpath,id,css)
    [Teardown]       Close Browser


abrir navegador
    Open Browser  browser=chrome

fechar navegador
   Close Browser
