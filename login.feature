#language: pt

Funcionalidade: Login na plataforma 


Cenário: Direcionamento para tela de checkout com dados válidos
Dado que o usuário está na página de login
Quando o usuário insere um nome de usuário e senha válida
Então o sistema deve redirecionar o usuário para a tela de checkout

Cenário: Exibir mensagem de alerta para campos inválidos
Dado que o usuário está na página de login
Quando o usuário insere um nome de usuário ou senha inválida
Então o sistema deve exibir uma mensagem de alerta inicial "Usuário ou senha inválida"

