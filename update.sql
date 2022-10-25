UPDATE nomeDaTabela SET coluna = novoValor, coluna = novoValor (se tiver mais de uma alteração)
WHERE coluna = algumIdentificador/ geralmente chave primária.

UPDATE tbvendedores SET PERCENTUAL_COMISSAO = 0.08
WHERE MATRICULA = '00235';

UPDATE tbvendedores SET NOME = 'José Geraldo da Fonseca Junior'
WHERE MATRICULA = '00233';

/*exemplos*/
UPDATE tbvendedores SET DATA_ADMISSAO = '2014-08-15', DE_FERIAS = 0 WHERE MATRICULA = '00235';

UPDATE tbvendedores SET DATA_ADMISSAO = '2013-09-17', DE_FERIAS = 1 WHERE MATRICULA = '00236';