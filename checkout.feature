#language:pt 

Funcionalidade: Tela de Cadastro - Checkout

Cenario: Cadastrar usuário com todos os dados obrigatórios 
Dado que o usuário está na página de cadastro
Quando o usuário preenche todos os campos obrigatórios marcados com asteriscos (*), clicar no botão
Então o sistema deve cadastrar o usuário com sucesso

Cenário: Exibir mensagem de erro para formato inválido de e-mail
Dado que o usuário está na página de cadastro
Quando o usuário insere um endereço de e-mail com formato inválido
Então o sistema deve exibir uma mensagem de erro indicando que o formato do e-mail é inválido

Cenário: Exibir mensagem de alerta ao tentar cadastrar com campos vazios
Dado que o usuário está na página de cadastro
Quando o usuário tenta cadastrar com campos vazios
E clica no botão de cadastro
Então o sistema deve exibir uma mensagem de alerta indicando que todos os campos obrigatórios devem ser preenchidos
E o usuário deve permanecer na página de cadastro
