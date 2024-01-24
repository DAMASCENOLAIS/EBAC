#language: pt 

Funcionalidade: Seleção de produto 

Cenário: Seleção de cor, tamanho e quantidade obrigatório 
Dado que o usuário está na página de produtos 
Quando o usuário selaciona um cor, tamanho e quantidade  válida 
Então o sistema deve adiconar o produto no carrinho


Cenário: Limite de 10 produtos por venda
Dado que o usuário está no carrinho de compras, contendo mais de 10 produtos no carrinho
Quando o usuário tenta concluir a venda
Então o sistema deve exibir uma mensagem de erro, impedindo prosseguir com a compra


Cenário: Reverter ao estado original ao clicar no botão "Limpar"
Dado que o usuário preencheu o formulário com dados
E o usuário clicou no botão "Limpar"
Então os campos do formulário devem estar vazios
    
Esquema do Cenário:  Selecionar de produto
Quando selecionar cor, tamanho e quantidade dos <produtos>
E adicionar os produtos no <carrinho>
Então o sistema deve finalizar a <compra> 

Exemplos: 
|Produtos|Carrinho|Compra 
|Preto, M, 2|Blusa|Valor final R$**
