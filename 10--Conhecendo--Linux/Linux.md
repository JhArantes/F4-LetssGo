# 🐧 Resumo sobre Linux  

## 📜 Introdução  
**Linux** é um sistema operacional de código aberto e gratuito, baseado no **kernel Linux**, desenvolvido por **Linus Torvalds** em **1991**. Ele é amplamente utilizado em servidores, desktops, dispositivos embarcados e supercomputadores. O Linux faz parte do ecossistema de **software livre**, onde o código-fonte pode ser modificado e redistribuído por qualquer pessoa. Muitas distribuições (como Ubuntu, Fedora e Debian) combinam o kernel Linux com ferramentas do projeto **GNU**, por isso também é chamado de **GNU/Linux**.  

---

## 🕰️ Histórico  
- 🎯 Criado por **Linus Torvalds** em **1991** como uma alternativa livre ao Unix.  
- 💡 Inspirado no sistema **Minix**, desenvolvido por Andrew S. Tanenbaum.  
- 🚀 Tornou-se popular devido à sua filosofia de **código aberto** e à colaboração da comunidade.  
- 🌍 Hoje, é usado em diversas áreas, desde **servidores corporativos** até **dispositivos IoT**.  

---

## ⌨️ Interface de Linha de Comando (CLI)  
- O **Terminal** é a principal ferramenta para interagir com o Linux via comandos.  
- 🔤 Sensível a maiúsculas/minúsculas.  
- 🔍 Oferece **autocompletar** com a tecla **Tab**.  

### 📌 Principais Comandos  

| Comando  | Descrição | Exemplo |
|----------|-----------|---------|
| `ls`     | Lista arquivos e diretórios | `ls -l` *(lista detalhada)* |
| `cd`     | Muda de diretório | `cd /home/usuario` |
| `pwd`    | Mostra o diretório atual | `pwd` |
| `cp`     | Copia arquivos/diretórios | `cp arquivo.txt /backup/` |
| `mv`     | Move ou renomeia arquivos | `mv antigo.txt novo.txt` |
| `rm`     | Remove arquivos/diretórios | `rm -r pasta/` |
| `mkdir`  | Cria diretórios | `mkdir projetos` |
| `rmdir`  | Remove diretórios vazios | `rmdir pasta_vazia` |
| `touch`  | Cria arquivos vazios | `touch arquivo.txt` |
| `cat`    | Exibe conteúdo de arquivos | `cat arquivo.txt` |
| `less`   | Visualiza arquivos paginados | `less log.txt` |
| `head`   | Mostra as primeiras linhas | `head -n 5 arquivo.txt` |
| `tail`   | Mostra as últimas linhas | `tail -f log.txt` *(monitora em tempo real)* |
| `grep`   | Busca padrões em arquivos | `grep "erro" log.txt` |

---

## 🗺️ Caminhos no Linux  
- **Absoluto**: Começa com `/` (ex: `/home/usuario/arquivo.txt`).  
- **Relativo**: Baseado no diretório atual (ex: `./pasta/arquivo` ou `../pai/arquivo`).  

---

## 💾 Sistema de Arquivos  
- Suporta formatos como **ext4, NTFS, FAT32 e exFAT**.  
- Arquivos são organizados em uma estrutura hierárquica, começando no diretório **raiz (`/`)**.  

---

## 🎯 Conclusão  
**Linux** é um sistema **poderoso, flexível e seguro**, ideal para desenvolvedores, administradores de sistemas e usuários que valorizam **liberdade e personalização**. Sua **CLI robusta** e a vasta gama de distribuições atendem a diferentes necessidades, desde uso doméstico até **enterprise**.  

> 💡 **Dica**: Para aprender mais, explore comandos como `man` *(manual)* ou `--help` (ex: `ls --help`).  

⬇️ **Download** este resumo em formato [Markdown](resumo_linux.md)!  