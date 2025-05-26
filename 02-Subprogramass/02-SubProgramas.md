# Subprogramas em PL/SQL

## Visão Geral
Subprogramas em PL/SQL podem ser classificados em:
- **Blocos anônimos**: Sem nome, não armazenados no banco
- **Blocos nomeados**: Armazenados (Procedures, Functions, Packages, Triggers)

### Estrutura básica:
1. **Parte Declarativa**: Variáveis, tipos, exceções locais
2. **Parte Executável**: Lógica principal
3. **Tratamento de Exceções** (opcional)

## Subprogramas Anônimos vs Nomeados

| Característica          | Anônimos                          | Nomeados                          |
|-------------------------|-----------------------------------|-----------------------------------|
| Nome                    | Não possuem                       | Possuem nome definido             |
| Armazenamento           | Não armazenados                   | Armazenados no banco              |
| Reutilização            | Não reutilizáveis                 | Reutilizáveis                     |
| Compilação              | Compilados a cada execução        | Pré-compilados                    |
| Melhor uso              | Tarefas pontuais                  | Soluções corporativas             |

## Tipos de Subprogramas Nomeados

### 1. Procedures
- Executam ações sem retornar valor
- Podem ter parâmetros IN/OUT
- Exemplo:
```sql
CREATE OR REPLACE PROCEDURE PRC_DB_INSERE_LOJA (
    P_NM_LOJA IN DB_LOJA.NM_LOJA%TYPE,
    P_DT_INAUGURACAO IN DB_LOJA.DT_INAUGURACAO%TYPE
) AS
BEGIN
    INSERT INTO DB_LOJA VALUES (SQ_DB_LOJA.NEXTVAL, P_NM_LOJA, P_DT_INAUGURACAO);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20001, 'Erro ao inserir loja: ' || SQLERRM);
END;
```

# Functions
Selecionar dados e obrigatoriamente retorna um valor expecifico

<p>
            As functions têm como principal objetivo calcular e retornar um valor e são frequentemente usadas em consultas SQL para realizar cálculos ou utilizadas dentro de procedures para resolver regras de negócio;
          </p>


# Packages

Agrupar procedimentos, Funções 
melhor performance, reorganização e reutilização dos codigos

<p>
            Os pacotes agrupam procedures, functions, variáveis e outros elementos relacionados em um único módulo, promovendo organização, reutilização e encapsulamento do código;
          </p>

# Triggers
<p>
            São subprogramas executados automaticamente em resposta a eventos específicos no banco de dados, como inserções, atualizações ou exclusões de dados, garantindo a aplicação de regras de negócios em tempo real.
          </p>

---

# Segurança e controle de Acesso com Subprogramas

Os subprogramas do PL/SQL Procedures, Functions, Packages e Triggers são ferramentas poderosas e incapsulão a logica de negocio

Apos contruir esses codigos fonte e compilados dentro do SGBD Oracle é hora de escolher quem terá acesso a eles e isso é feito por 2 comandos basicos no PL/SQL

Comandos Grant e Revoke


```sql
--
-- CONCEDENDO O PRIVILÉGIO DE EXECUÇÃO DA PROCEDURE
-- PRC_DB_ATUALIZA_ESTRELAS_CLIENTE PARA O USUARIO PF0110.
GRANT EXECUTE ON PRC_DB_ATUALIZA_ESTRELAS_CLIENTE TO pf0110;
```

```sql
--
-- REVOGANDO O PRIVILÉGIO DE EXECUÇÃO DA PROCEDURE
-- PRC_DB_ATUALIZA_ESTRELAS_CLIENTE PARA O USUARIO PF0110.
-- CONECTADO COM O USUARIO DBURGER, REALIZAMOS ESSA TAREFA
REVOKE EXECUTE ON PRC_DB_ATUALIZA_ESTRELAS_CLIENTE FROM pf0110;
```



```sql
CREATE OR REPLACE PROCEDURE PRC_DB_ATUALIZA_VL_TOT_PEDIDO (
    P_NR_LOJA DB_PEDIDO.NR_LOJA%TYPE, 
	P_NR_PEDIDO DB_PEDIDO.NR_PEDIDO%TYPE
) IS
	-- OS PARÂMETROS UTILIZAM O CONCEITO DE HERANÇA DOS TIPOS DE DADOS
	--
	-- VARIÁVEL CXRIADA NA SEÇÃO DE DECLARAÇÃO QUE IRÁ
	-- RECEBER O VALOR TOTAL DA CONSULTA SQL.
	V_VL_TOT_PEDIDO DB_PEDIDO.VL_TOT_PEDIDO%TYPE;
BEGIN
    
	SELECT  SUM(IP.QT_PEDIDO * IP.VL_UNITARIO) VAL_TOT_PEDIDO
	INTO 	V_VL_TOT_PEDIDO
	FROM    DB_ITEM_PEDIDO IP
	WHERE 	IP.NR_LOJA = P_NR_LOJA
	AND		IP.NR_PEDIDO = P_NR_PEDIDO;
	
	IF SQL%ROWCOUNT  > 0 THEN
		-- ATUALIZA A QUANTIDADE DE ESTRELAS DE UM DETERMINADO CLIENTE
		UPDATE DB_PEDIDO
		SET VL_TOT_PEDIDO = V_VL_TOT_PEDIDO
		WHERE NR_LOJA = P_NR_LOJA
		AND	NR_PEDIDO = P_NR_PEDIDO;
		DBMS_OUTPUT.PUT_LINE('A LOJA(' || P_NR_LOJA || ') E O PEDIDO (' || P_NR_PEDIDO || ') TEM O VALOR TOTAL A SER PAGO DE:' || V_VL_TOT_PEDIDO);
	ELSE
		DBMS_OUTPUT.PUT_LINE('A LOJA(' || P_NR_LOJA || ') NÃO POSSUI O PEDIDO (' || P_NR_PEDIDO || ') CADASTRADO!');
	END IF;
	
EXCEPTION
	-- CASO ENCONTRE ALGUM ERRO, ESTE SERÁ CAPTURADO E O PROCESSAMENTO SERÁ ENCERRADO.
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20005, 'ERRO CRÍTICO NA ATUALIZAÇÃO DO PEDIDO (' || P_NR_PEDIDO || ') DA LOJA(' || P_NR_LOJA || ') ERRO:' ||SQLERRM);
END;
/

```

<on-section-content>
      <h1 class="on-text-uppercase">
        <div class="on-font-roboto-black on-font-size-medium"></div>
        <div class="on-font-metronic-slab-pro-light on-font-size-large">CONCLUSÃO</div>
      </h1>
      <p>
        Subprogramas PL/SQL armazenados em banco de dados como procedures, functions, packages e triggers, oferecem diversas vantagens em termos de performance e otimização, pois são pré-compilados e mantidos em cache pela Oracle, reduzindo o tempo necessário para sua execução.
      </p>
      <p>
        Ao minimizar a troca de dados entre a aplicação e o banco de dados, subprogramas armazenados ajudam a diminuir a latência, especialmente em operações que envolvem grandes volumes de dados ou cálculos complexos, e além disso, a execução de lógica de negócios diretamente no servidor permite centralizar as regras, reduzindo a redundância e garantindo maior consistência nos resultados.
      </p>
      <p>
        Outro aspecto crucial é que operações repetitivas podem ser encapsuladas em funções ou procedures, implementando o reuso e evitando a reescrita de código, fazendo com que o uso de subprogramas nomeados em PL/SQL seja uma prática amplamente recomendada para empresas de qualquer porte que utilizam o SGBD Oracle.
      </p>
      <h2>ATIVIDADE NÃO AVALIATIVA</h2>
      <on-important>
        <p>
          Essa atividade não é avaliativa, caso queira ter um feedback, entre em contato com seu tutor pelo Teams.
        </p>
      