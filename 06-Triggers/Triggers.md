

# 📘 Resumo da Aula sobre Triggers em PL/SQL – Projeto DBurger 🍔

## 1. 🚀 O que são Triggers?

Triggers são blocos de código **executados automaticamente** em resposta a eventos como:
- `INSERT`
- `UPDATE`
- `DELETE`

### 🔧 Aplicações:
- Validação de dados
- Auditoria
- Automatização de tarefas

---

## 2. 🏗️ Projeto Divine Burger (DBurger)

Contexto prático: uso de triggers no sistema de pedidos de uma hamburgueria fictícia.  
Objetivo: automatizar regras de negócio e garantir integridade nos dados da empresa.

---

## 3. ⚙️ Tipos de Triggers

| Tipo         | Quando executa                         | Exemplo de uso                     |
|--------------|----------------------------------------|------------------------------------|
| `BEFORE`     | Antes da operação                      | Validar valor negativo             |
| `AFTER`      | Depois da operação                     | Atualizar tabela relacionada       |
| `STATEMENT`  | Uma vez por comando SQL                | Registrar logs                     |
| `ROW`        | Para cada linha afetada                | Validar linha por linha            |

---

## 4. 🧱 Sintaxe Básica

```sql
CREATE OR REPLACE TRIGGER trigger_name
BEFORE INSERT ON table_name
FOR EACH ROW
BEGIN
   -- código da trigger
END;
```

---

## 5. 🌟 Vantagens das Triggers

✅ Automatizam tarefas repetitivas  
✅ Centralizam regras de negócio  
✅ Garantem integridade dos dados  
✅ Permitem auditoria automática  
✅ Respondem rápido a alterações

---

## 6. 🎯 Execução Condicional

Usa-se a cláusula `WHEN` para rodar triggers só em certas condições.

```sql
WHEN (NEW.valor_total < 0)
```

---

## 7. 📌 Boas Práticas

- Mantenha o código simples
- Evite gatilhos circulares (looping)
- Limite triggers por evento/tabela
- Não exagere em lógica complexa

---

## 8. ❗ Tratamento de Erros

Use `RAISE_APPLICATION_ERROR` para mensagens personalizadas:

```sql
RAISE_APPLICATION_ERROR(-20001, 'Valor inválido!');
```

---

## 9. 🔧 Gerenciamento de Triggers

Você pode **habilitar** ou **desabilitar** triggers conforme necessário:

```sql
ALTER TRIGGER nome_da_trigger DISABLE;
ALTER TRIGGER nome_da_trigger ENABLE;
```

---

## 10. 📝 Atividades Práticas

- `TRG_DB_VALIDA_VALOR_TOT_PEDIDO`: impede valor negativo em pedidos  
- `TRG_DB_PEDIDO_ATUALIZA_CLIENTE`: atualiza cliente quando pedido muda  
- `TRG_DB_AUDITORIA_OPERACAO`: registra mudanças em produtos

---

## 11. ✅ Conclusão

Triggers tornam o sistema mais **seguro, automatizado e inteligente**.  
Elas são essenciais no desenvolvimento em PL/SQL e fundamentais em projetos reais.

---

## 12. 🎯 Desafio Final (Não Avaliativo)

Implemente suas próprias triggers em novas tabelas do projeto DBurger!  
Exercite validações, auditoria e automações!

---

📚 **Bons estudos!** Qualquer dúvida, consulte o professor ou mentor. 😄
