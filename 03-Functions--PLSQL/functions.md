
# Functions em PL/SQL

Neste capítulo, vamos explorar um dos elementos mais essenciais e versáteis da linguagem PL/SQL, conhecido popularmente como FUNCTION. E nosso aprendizado começa com a definição e o conceito básico de uma função, além de compreender as diferenças entre funções e procedimentos(procedures).

Funções em PL/SQL é um sub programa nomeado deve possuir nome unico

Toda function deve retornar um valor pra quem a chamou

Compiladas e ficam armazenadas dentro do DB




Resumo sobre Functions em PL/SQL Oracle
Conceito Básico
Functions são subprogramas nomeados em PL/SQL que devem possuir nomes únicos

Devem sempre retornar um valor para quem as chamou

São compiladas e armazenadas dentro do banco de dados

Sintaxe Básica
A estrutura de uma function inclui:

Declaração CREATE OR REPLACE FUNCTION

Nome da função e parâmetros

Cláusula RETURN com o tipo de dado

Blocos IS/AS, BEGIN, EXCEPTION e END

Diferenças entre Functions e Procedures
Característica	Function	Procedure
Retorno	Sempre retorna valor com RETURN	Usa parâmetros IN OUT/OUT para retorno
Uso em SQL	Pode ser chamada em instruções SQL	Não pode ser usada diretamente em SQL
Objetivo	Cálculos e transformações	Operações complexas com múltiplos passos
Tipos de Parâmetros
IN (padrão em funções):

Passa valores de entrada para a função

Somente leitura (não pode ser modificado)

OUT:

Permite retornar valor adicional além do RETURN

Valor deve ser atribuído explicitamente na função

Tipo pode ser diferente do retorno principal

IN OUT:

Permite entrada e saída de valores

Valor pode ser modificado dentro da função

Alteração é refletida fora da função

Exemplo Prático
O texto mostra um exemplo de chamada de function que calcula o valor total de vendas para um ano específico, demonstrando como usar o retorno da função em um bloco PL/SQL.

As functions são essenciais para cálculos e transformações de dados no Oracle PL/SQL, oferecendo reutilização de código e melhor organização da lógica de negócios.

```sql
--
-- Script criado para acionar a função FUN_DB_CALCULA_VL_TOT_VENDA
--
SET SERVEROUTPUT ON;
DECLARE
	V_ANO NUMBER(4) := EXTRACT( YEAR FROM SYSDATE);
	V_VL_TOT_VENDA_BRUTO NUMBER;
BEGIN
	V_VL_TOT_VENDA_BRUTO := FUN_DB_CALCULA_VL_TOT_VENDA (V_ANO);
	DBMS_OUTPUT.PUT_LINE('O ANO DE (' || V_ANO || ') TEVE O VALOR TOTAL DE VENDA BRUTO EM:' || V_VL_TOT_VENDA_BRUTO );
END;

```

```sql
[CREATE [OR REPLACE ] ]
FUNCTION function_name [ (parameter [, parameter]...) ] RETURN
datatype
[ AUTHID {DEFINER | CURRENT_USER}]
[ PARALLEL_ENABLE
[ {[CLUSTER parameter BY (column_name [, column_name ]... ) ] |
[ORDER parameter BY (column_name [, column_name ]... ) ] } ]
[ (PARTITION parameter BY
{[ {RANGE | HASH} (column_name [, column_name]...)] | ANY }
) ]
]
[DETERMINISTIC] [ PIPELINED [ USING implementation_type ] ]
[ AGGREGATE [UPDATE VALUE] [WITH EXTERNAL CONTEXT]
USING implementation_type] {IS | AS}
[ PRAGMA AUTONOMOUS_TRANSACTION;]
[ local declarations]
BEGIN
	executable statements
[ EXCEPTION
	exception handlers]
END [name];
```
