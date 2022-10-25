/*Retorna tudo*/
SELECT * FROM nomeDaTabela;

/*Retorna coluna especifica*/
SELECT nomeDasColunas FROM nomeDaTabela;

/*Pode ser feito com mais de uma*/
SELECT PRODUTO, EMBALAGEM FROM tbproduto;

/*Retorna as duas primeiras linhas das duas colunas*/
SELECT PRODUTO, EMBALAGEM FROM tbproduto LIMIT 2;

/*A coluna vai ter o nome alterado somente na exibição*/
SELECT CPF AS CADASTRO_PESSOA, NOME AS VULGO FROM tbcliente;

/*Buscando produto específico*/
SELECT * FROM tbproduto WHERE PRODUTO = '544931';

/*Todos os clientes cariocas*/
SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro';

/*Todos produtos sabor limão*/
SELECT * FROM tbproduto WHERE SABOR = 'Limão';

/*Trará todos os nomes que começam com D em diante*/
SELECT * FROM tbcliente WHERE NOME > 'Carlos';

/*O MYSSQL NAO RETORNA COM EXATIDAO PONTOS FLUTUANTES, ENTAO O = OU >= NAO FUNCIONAM COM FLOAT*/
SELECT * FROM tbvendedores WHERE PERCENTUAL_COMISSAO BETWEEN 0.09 AND 0.11;
/*para achar alguem com o percentual 0.10*/

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO = '1995-01-13';

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO > '1995-01-13';

/*utilizando o year antes possibilita buscarmos pelo número inteiro, sem usar aspas*/
SELECT * FROM tbcliente WHERE YEAR(DATA_NASCIMENTO) = 1995;
/*pode ser month ou day*/

/*FILTROS COMPOSTOS*/ 
SELECT * FROM tbproduto WHERE PRECO_LISTA >= 16.007 AND PRECO_LISTA <= 16.009;

SELECT * FROM tbvendedores WHERE PERCENTUAL_COMISSAO BETWEEN 0.09 AND 0.11;

SELECT * FROM tbcliente WHERE IDADE >= 18 AND IDADE <=22 AND SEXO = 'M';
/*o and nao se restringi as mesmas condições(idade e idade por ex), o sexo ou qualquer outro elemento pode entrar tmb*/

SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro' OR BAIRRO = 'Jardins';

SELECT * FROM tbcliente WHERE (IDADE >= 18 AND IDADE <=22 AND SEXO = 'M') OR (CIDADE = 'Rio de Janeiro' OR BAIRRO = 'Jardins');