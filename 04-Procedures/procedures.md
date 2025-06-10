
# Procedures

Unas das ferramentas mais poderosas para sistemas robustos e eficientes

São procedimentos armazenados em banco de dados que executam inumeras taredas, processamentos complexos 
Ex: Fechamento Contabil!

As procedures permitam resolver as principais regras de negocio permitindo encapsulalas
São permitidos parametros para deixa-lo mais flexisivel 

---

Projeto DBurguer

```sql
CREATE OR REPLACE PROCEDURE PRC_DB_GERA_ESTRELAS_CLIENTE
IS
    -- VARIÁVEL CONTADOR INTERNO PARA CADA LINHA PROCESSADA.
    V_CONTADOR NUMBER := 00;
	-- VARIÁVEL QUE IRÁ RECEBER O NÚMERO DE ESTRELAS DO CLIENTE
	V_QT_ESTRELAS DB_CLIENTE.QT_ESTRELAS%TYPE;
    -- VARIÁVEL QUE IRÁ RECEBER O VALOR DO TICKET MÉDIO DE COMPRA DO CLIENTE
    V_VL_TICKET_MEDIO NUMBER(10,2);

BEGIN
	-- UTILIZAMOS O FOR LOOP PARA PROCESSAR TODOS OS CLIENTES.
	FOR z IN (SELECT ROWID, NR_CLIENTE, QT_ESTRELAS FROM DB_CLIENTE)
	LOOP
        -- Adicionamos 1 ao nosso contador de processamento.
        v_contador := v_contador + 1;
		--
		-- CALCULA O VALOR DO TICKET MÉDIO DO CLIENTE
        -- QUE SE ENCONTRA NA VARIÁVEL INTERNA Z.NR_CLIENTE
		--
		SELECT  ROUND(AVG(P.VL_TOT_PEDIDO),2)
		INTO    V_VL_TICKET_MEDIO
		FROM    DB_PEDIDO P INNER JOIN DB_CLIENTE C
		ON  (C.NR_CLIENTE = P.NR_CLIENTE)
		WHERE   C.NR_CLIENTE = z.nr_cliente;

		-- Agora vamos calcular a quantidade de estrelas
		-- a partir do valor médio de compra feito pelo cliente.
		IF V_VL_TICKET_MEDIO > 399 THEN
		   V_QT_ESTRELAS := 5;
		ELSIF V_VL_TICKET_MEDIO > 380 THEN
			V_QT_ESTRELAS := 4;
		ELSIF V_VL_TICKET_MEDIO > 320 THEN
			V_QT_ESTRELAS := 3;
		ELSIF V_VL_TICKET_MEDIO > 280 THEN
			V_QT_ESTRELAS := 2;
		ELSE
			V_QT_ESTRELAS := 1;
		END IF;

		-- Após trabalharmos com o comando IF ELSIF ELSE END IF
		-- chegamos a uma nova quantidade de número de estrelas.
		UPDATE 	DB_CLIENTE C SET C.QT_ESTRELAS = V_QT_ESTRELAS
		WHERE	C.ROWID = z.rowid;

	END LOOP;

    -- CONFIRMAMOS A TRANSAÇÃO PENDENTE
	COMMIT;

	-- A MENSAGEM DEVE PERMANECER EXIBIDA ATÉ O ÚLTIMO INSTANTE
	-- ANTES DE ENTRAR EM PRODUÇÃO. DEPOIS DEVEMOS COMENTÁ-LA COM
	-- /* <MSG> */
    DBMS_OUTPUT.PUT_LINE('ATUALIZAMOS O TOTAL DE (' || V_CONTADOR || ') CLIENTES.');

END;
/

```


```sql
CREATE OR REPLACE PROCEDURE PRC_DB_CALC_VENDAS_LOJA_PROD_ANO_MES (
P_NR_LOJA IN DB_PRODUTO_LOJA.NR_LOJA%TYPE,
P_NR_ANO IN NUMBER,
P_NR_MES IN NUMBER )
IS

	-- VARIÁVEL QUE IRÁ RECEBER O RESULTADO DO CALCULO
	-- DA QUANTIDADE DE VENDAS AGRUPADA POR ANO E MÊS
	-- DE DETERMINADO PRODUTO
	V_QTD_VENDAS DB_RESUMO_VENDA_PROD_ANO_MES.QT_VENDAS%TYPE := 00;

BEGIN

	-- ANTES DE REALIZAR O PROCESSAMENTO, LIMPAMOS TODOS OS DADOS DA TABELA.
	DELETE FROM DB_RESUMO_VENDA_PROD_ANO_MES WHERE NR_LOJA = P_NR_LOJA AND
	NR_ANO = P_NR_ANO AND NR_MES = P_NR_MES;


	-- Para cada produto exibido vamos verificar se existe vendas realizadas do produto durante o ano e mês corrente
	FOR X IN (	SELECT CD_PRODUTO_LOJA FROM DB_PRODUTO_LOJA
                WHERE NR_LOJA = P_NR_LOJA
	)
	LOOP
		-- Instrução SQL que calcula a quantidade total de vendas de cada produto
		-- de uma determinada loja, agrupado por ano e mês de venda.
		-- veja os parâmetros de filtros (cd_produto_loja, ano e mês)
		SELECT  COUNT(IP.QT_PEDIDO) QTD_TOT_VENDAS
		INTO 	V_QTD_VENDAS
		FROM    DB_PRODUTO_LOJA PL  INNER JOIN DB_ITEM_PEDIDO IP
		ON		(PL.CD_PRODUTO_LOJA = IP.CD_PRODUTO_LOJA) INNER JOIN DB_PEDIDO P
		ON		(IP.NR_LOJA = P.NR_LOJA AND IP.NR_PEDIDO = P.NR_PEDIDO)
		WHERE   PL.NR_LOJA = P_NR_LOJA
		AND    	IP.CD_PRODUTO_LOJA = x.cd_produto_loja
		AND    	EXTRACT( YEAR FROM P.DT_PEDIDO) = P_NR_ANO
		AND    	EXTRACT( MONTH FROM P.DT_PEDIDO) = P_NR_MES;

		-- Para cada linha, processada, vamos armazenar as informações na tabela resumo.
		BEGIN
			INSERT INTO  DB_RESUMO_VENDA_PROD_ANO_MES(
			CD_PRODUTO_LOJA, NR_ANO, NR_MES, NR_LOJA,  QT_VENDAS
			)
			VALUES (
			x.cd_produto_loja,
			p_nr_ano,
            p_nr_mes,
            p_nr_loja,
			V_QTD_VENDAS
			);

        EXCEPTION
			WHEN OTHERS THEN
				DBMS_OUTPUT.PUT_LINE('ERRO NO INSERT DA TABELA DB_RESUMO_VENDA_PRODUTO_ANO, CODIGO PRODUTO (' || X.CD_PRODUTO_LOJA || ') ' || SQLERRM);
        END;
    END LOOP;

	-- Após o final do processamento, se tudo ocorreu bem,
	-- confirmar as transações pendentes.
	COMMIT;

END PRC_DB_CALC_VENDAS_LOJA_PROD_ANO_MES;
/
```