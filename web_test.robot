***Settings***
Resource    ./resource.robot
Test Setup    abrir navegador
Test Teardown   fechar navegador


***Test Cases**

Scenario 1
 Given User is in Registration form page
 When User fill the field “name” with “Camila”
 And User fill the field “e-mail” with “nome@email.algo”
 And User fill the field “senha” with “a#1b”
 And User fill the field “ repetir senha” with “a#1b”
 And User click in “Cadastrar”
 Then System should redirect to sucess page

Scenario 2
 Given User is in Registration form page
 When User fill the field name “ gfgfhjgkitjdlithnhflhfgtjakhgjahfhgjutioehailritdf”
 And User fill the field “e-mail” with “nome@email.algo”
 And User fill the field “senha” with “a#1b”
 And User fill the field “ repetir senha” with “a#1b”
 And User click in “Cadastrar”
 Then System should shown na alert about the “name” max length.

Scenario 3
 Given User is in Registration form page
 When User fill the field name “ Camila123”
 And User fill the field “e-mail” with “nome@email.algo”
 And User fill the field “senha” with “a#1b”
 And User fill the field “ repetir senha” with “a#1b”
 And User click in “Cadastrar”
 Then System should shown na alert about the “name” can no longer contain numbers

Scenario 4
 Given User is in Registration form page
 When User fill the field name “ Camila$”
 And User fill the field “e-mail” with “nome@email.algo”
 And User fill the field “senha” with “a#1b”
 And User fill the field “ repetir senha” with “a#1b”
 And User click in “Cadastrar”
 Then System should shown na alert about the “name” can no longer contain special characters

Scenario 5
 Given User is in Registration form page
 When User fill the field name “ Camila”
 And User fill the field “e-mail” with “nome@email”
 And User fill the field “senha” with “a#1b”
 And User fill the field “ repetir senha” with “a#1b”
 And User click in “Cadastrar”
 Then System should shown na alert about the “e-mail” must be a valid e-mail address

Scenario 6
 Given User is in Registration form page
 When User fill the field name “ Camila”
 And User fill the field “e-mail” with “nome@email.algo”
 And User fill the field “senha” with “a1#”
 And User fill the field “ repetir senha” with “a1#”
 And User click in “Cadastrar”
 Then System should shown an alert about the “senha” must contain min lenght

Scenario 7
 Given User is in Registration form page
 When User fill the field name “ Camila”
 And User fill the field “e-mail” with “nome@email.algo”
 And User fill the field “senha” with “ac1b”
 And User fill the field “ repetir senha” with “ac1b”
 And User click in “Cadastrar”
 Then System should shown na alert about the “senha” must contain one special characters

Scenario 8
 Given User is in Registration form page
 When User fill the field name “ Camila”
 And User fill the field “e-mail” with “nome@email.algo”
 And User fill the field “senha” with “2#14”
 And User fill the field “ repetir senha” with “2#14”
 And User click in “Cadastrar”
 Then System should shown na alert about the “senha” must contain one letter

Scenario 9
 Given User is in Registration form page
 When User fill the field name “ Camila”
 And User fill the field “e-mail” with “nome@email.algo”
 And User fill the field “senha” with “c#ba”
 And User fill the field “ repetir senha” with “c#ba”
 And User click in “Cadastrar”
 Then System should shown na alert about the “senha” must contain one number

Scenario 10
 Given User is in Registration form page
 When User fill the field name “ Camila”
 And User fill the field “e-mail” with “nome@email.algo”
 And User fill the field “senha” with “c#ba”
 And User fill the field “ repetir senha” with “c7#ba”
 And User click in “Cadastrar”
 Then System should shown na alert about the “repetir senha” must be the same as “senha”
