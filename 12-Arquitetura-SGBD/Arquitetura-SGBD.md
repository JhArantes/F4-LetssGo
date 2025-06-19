# 🗂️ Resumo da Aula – Arquitetura do Banco de Dados Oracle
## 📌 O que é o Oracle Database?
O Oracle Database é um dos sistemas de banco de dados mais usados no mundo. Ele serve para armazenar, organizar e acessar grandes volumes de informações de forma segura e eficiente.

## 🧠 Como funciona por dentro?
#### 🧩 Estruturas de Memória
Quando o banco está em funcionamento, ele usa a memória do servidor para trabalhar. Essa memória é dividida em duas partes principais:

SGA (System Global Area) – Área compartilhada por todos os usuários.

Shared Pool: guarda instruções SQL e informações usadas com frequência.

Buffer Cache: armazena temporariamente os dados lidos do disco.

Redo Log Buffer: registra as mudanças feitas no banco.

Large Pool, Java Pool, Streams Pool: usadas para tarefas específicas como Java ou replicações.

PGA (Program Global Area) – Área individual para cada processo que se conecta ao banco.

## 🧱 Estruturas do Banco de Dados
Tablespace: é como uma “pasta” onde os dados são organizados.

Arquivos de Dados: guardam as informações reais do banco no disco rígido.

## ⚙️ Processos Internos do Oracle
O Oracle funciona com vários processos ao mesmo tempo, como se fossem funcionários especializados:

DBWn (Database Writer) – salva dados da memória no disco.

LGWR (Log Writer) – registra mudanças feitas no banco.

CKPT (Checkpoint) – sincroniza dados na memória e no disco.

SMON (System Monitor) – cuida da recuperação do banco após falhas.

PMON (Process Monitor) – limpa processos que travaram.

## 🎯 Por que entender isso é importante?
Saber como o Oracle funciona por dentro ajuda profissionais como:

Administradores de banco de dados

Desenvolvedores de sistemas

Analistas de TI

Com esse conhecimento, é possível criar sistemas mais rápidos, seguros e bem estruturados.

## 🔍 Quer aprender mais?
Este é só o começo! Você pode se aprofundar em:

Performance e otimização

Segurança de dados

Backup e recuperação

Gerenciamento avançado de memória e processos