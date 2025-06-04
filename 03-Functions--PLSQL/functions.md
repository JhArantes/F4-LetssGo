
# Functions em PL/SQL

Neste capítulo, vamos explorar um dos elementos mais essenciais e versáteis da linguagem PL/SQL, conhecido popularmente como FUNCTION. E nosso aprendizado começa com a definição e o conceito básico de uma função, além de compreender as diferenças entre funções e procedimentos(procedures).

Funções em PL/SQL é um sub programa nomeado deve possuir nome unico

Toda function deve retornar um valor pra quem a chamou

Compiladas e ficam armazenadas dentro do DB

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


<h2>Diferença entre FUNCTION e PROCEDURE na linguagem PL/SQL</h2>

<div class="on-table-responsive" id="on-table-1">
        <table class="on-table on-table-primary">
          <thead>
            <tr>
              <th>Caraterísticas</th>
              <th>Function</th>
              <th>Procedure</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                Retorno
              </td>
              <td>
                Sempre retorna um valor com o uso da cláusula RETURN.
              </td>
              <td>
                Caso precise de retorno de valores, isso pode ser feito com o uso de parâmetros do tipo IN OUT ou OUT.
              </td>
            </tr>
            <tr>
              <td>
                Uso em SQL
              </td>
              <td>
                Pode ser chamada em instruções SQL.
              </td>
              <td>
                Não pode ser usada diretamente em instruções SQL.
              </td>
            </tr>
            <tr>
              <td>
                Objetivo
              </td>
              <td>
                Focada em cálculos e transformações onde temos um resultado de retorno.
              </td>
              <td>
                Focada em operações complexas de centenas e milhares de linhas de código contendo múltiplas passos e regras de negócio.
              </td>
            </tr>
          </tbody>
          <tfoot>
            <tr>
              <td colspan="3">
                Diferença entre Function e Procedure na linguagem PL/SQL
              </td>
            </tr>
          </tfoot>
        </table>
      </div>

<div class="on-table-responsive" id="on-table-1">
        <table class="on-table on-table-primary">
          <thead>
            <tr>
              <th>Caraterísticas</th>
              <th>Function</th>
              <th>Procedure</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                Retorno
              </td>
              <td>
                Sempre retorna um valor com o uso da cláusula RETURN.
              </td>
              <td>
                Caso precise de retorno de valores, isso pode ser feito com o uso de parâmetros do tipo IN OUT ou OUT.
              </td>
            </tr>
            <tr>
              <td>
                Uso em SQL
              </td>
              <td>
                Pode ser chamada em instruções SQL.
              </td>
              <td>
                Não pode ser usada diretamente em instruções SQL.
              </td>
            </tr>
            <tr>
              <td>
                Objetivo
              </td>
              <td>
                Focada em cálculos e transformações onde temos um resultado de retorno.
              </td>
              <td>
                Focada em operações complexas de centenas e milhares de linhas de código contendo múltiplas passos e regras de negócio.
              </td>
            </tr>
          </tbody>
          <tfoot>
            <tr>
              <td colspan="3">
                Diferença entre Function e Procedure na linguagem PL/SQL
              </td>
            </tr>
          </tfoot>
        </table>
      </div>


      

