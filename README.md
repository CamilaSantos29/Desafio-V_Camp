#  Desafio Valtech - V_Camp QA 

<p> Esse projeto visa realizar um planejamento de teste, que garanta a execução e cobertura de todos os possíveis cenários que um usuário possa executar em um cadastro. Tentei realizar como seria esse planejamento focando em um teste automatizado. </p>


# 🚀 Começando

## Tecnologias utilizadas
  * Robot framework: 3.2.2
    * Mais informações disponível em https://robotframework.org/#libraries
 * Python: 3.9.2
   * Mais informações, disponível em: https://www.python.org/downloads/
 * SeleniumLibrary:
    * Mais informações https://github.com/robotframework/SeleniumLibrary/
 * Baixar Webdriver: 
    * Chrome: https://chromedriver.chromium.org/home  
    * Mozilla Firefox:https://github.com/mozilla/geckodriver/releases/tag/v0.29.0 



# ⚙️ Executando os testes
## 📋 Pré-requisitos
* Necessário maximizar a tela, para que o teste seja realizado de maneira eficiente
* Necessário saber os caracteres máximos e mínimos para cada campo, além de identificar onde é preciso utilizar somente números, letrar, caracteres especiais
* E-mail não pode ter sido cadastrado anteriormente.


## 📋 Ação
 1- Acessar a página home do site da em que será feito o cadastro;

 2- Preencher os campos “nome”, “e-mail”, “senha” e “repetir senha” ;

 3-  Clicar em “cadastrar”;

 4-  Caso preenchimento no campo “nome” for maior de 50 caracteres, alertar sobre quantidade de caracteres acima do permitido;

 5- Caso preenchimento no campo “nome” tiver algum número incluido, alertar que número não são permitidos nesse campo;

 6- Caso preenchimento no campo “nome” tiver algum caracter especial incluido, alertar que caracteres especiais não são permitidos nesse campo;

 7- Caso preenchimento no campo “e-mail” não for preenchido com email válido conforme o modelo indicado, alertar que é necessário um email válido;

 8- Caso preenchimento no campo “senha” não tiver no mínimo 4 caracteres, alertar que é necessário ter mais de 4 caracteres;

 9- Caso preenchimento no campo “senha” não tiver no mínimo um caracter especial, alertar que é necessário pelo menos um caracter especial”;

 10- Caso preenchimento no campo “senha” não tiver no mínimo uma letra, alertar que é necessário pelo menos uma letra;

 11- Caso preenchimento no campo “senha” não tiver no mínimo um número, alertar que é necessário pelo menos um número;

12 -Caso preenchimento no campo “repetir senha” não estiver igual ao campo “senha”, alertar que é necessário que ambos sejam iguais;

14-  Fechar navegador.

## 📋 Resultados Esperados
1-	Sistema abre a página home indicada;

2-	Maximiza a página;

3-	Acessa as abas pré-definidas;

4-	Faz preenchimento automático dos campos;

5- Realiza cadastro com sucesso;

6- Caso haja algum erro determinado nos campos preenchidos, que ele encaminhe a mensagem adequada para cada erro.

# Como rodar?

1- Instale o RobotFramework no sistema. Em um prompt de comando execute:
```bash
pip install robotframework
```

2- Depois instale a biblioteca do Selenium para o robotframework utilizando do comando: 

```bash
  pip install robotframework-seleniumlibrary
```
3- Faça download do arquivo no GitHub

4- Acesse a pasta "Valtech" 

5- Abra o arquivo "resource.robot" e "web_test.robot" com o VS Code

6- Abra um prompt de comando na pasta desafio_técnico_tunts e execute o comando: 
```bash 
robot  desafio-v_camp\web_test.robot
```



## 📌 Autora/Contato

| [<img src="https://avatars.githubusercontent.com/u/88860081?s=400&u=62b41e4fc319244c5807bd7da1decd28e1be8d6f&v=4" width=115><br><sub>@CamilaSantos29</sub>](https://github.com/CamilaSantos29) |
| :---: |


- Linkedin  [Camila Santos](https://www.linkedin.com/in/camila-o-santos/ )
- E-mail [camila8925@hotmail.com]
---

