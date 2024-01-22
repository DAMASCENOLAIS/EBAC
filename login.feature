#language: pt

Funcionalidade: Seleção de produto 

Cenário: Seleção de cor, tamanho e quantidade obrigatório 
Dado que o usuário está na página de produtos 
Quando o usuário selaciona um cor válida 
E escolhe o tamanho disponível 
E indica a quantidade desejada 
E clica no botão "adicionar carrinho"
Então o sistema deve adiconar o produto no carrinho
E o sistema deve exibir uma mensagem de aceitação 


Cenário: Limite de 10 produtos por venda
Dado que o usuário está no carrinho de compras
E há mais de 10 produtos no carrinho
Quando o usuário tenta concluir a venda
Então o sistema deve exibir uma mensagem de erro
E não deve permitir a conclusão da venda com mais de 10 produtos

Cenário: Reverter ao estado original ao clicar no botão "Limpar"
Dado que o usuário preencheu o formulário com dados
E o usuário clicou no botão "Limpar"
Então os campos do formulário devem estar vazios
E o estado do formulário deve ser restaurado ao original



Funcionalidade: Login na plataforma 

Cenário: Direcionamento para a tela de checkout com dados válidos
Dado que o usuário está na página de login
Quando o usuário insere um nome de usuário e senha válidos
E clica no botão de login
Então o sistema deve redirecionar o usuário para a tela de checkout

Cenário: Exibir mensagem de alerta para campos inválidos
Dado que o usuário está na página de login
Quando o usuário insere um nome de usuário ou senha inválidos
E clica no botão de login
Então o sistema deve exibir uma mensagem de alerta indicando "Usuário ou senha inválidos"
E o usuário deve permanecer na página de login


Funcionalidade: Tela de cadastro - Checkout

Cenário: Cadastrar usuário com todos os dados obrigatórios
Dado que o usuário está na página de cadastro
Quando o usuário preenche todos os campos obrigatórios marcados com asteriscos (*)
E clica no botão de cadastro
Então o sistema deve cadastrar o usuário com sucesso
E redirecionar o usuário para a página de boas-vindas

Cenário: Exibir mensagem de erro para formato inválido de e-mail
Dado que o usuário está na página de cadastro
Quando o usuário insere um endereço de e-mail com formato inválido
E clica no botão de cadastro
Então o sistema deve exibir uma mensagem de erro indicando que o formato do e-mail é inválido
E o usuário deve permanecer na página de cadastro

Cenário: Exibir mensagem de alerta ao tentar cadastrar com campos vazios
Dado que o usuário está na página de cadastro
Quando o usuário tenta cadastrar com campos vazios
E clica no botão de cadastro
Então o sistema deve exibir uma mensagem de alerta indicando que todos os campos obrigatórios devem ser preenchidos
E o usuário deve permanecer na página de cadastro