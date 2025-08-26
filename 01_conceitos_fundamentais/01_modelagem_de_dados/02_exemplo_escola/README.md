# Exemplo Prático: Modelagem de um Mini-Sistema Escolar

Este diretório contém um exemplo prático de modelagem de dados, aplicando os conceitos teóricos a um cenário real.

## O Problema

Precisamos criar a estrutura de um banco de dados para um sistema simples que consiga registrar quais alunos estão inscritos em quais cursos.

**Regras de Negócio:**
1.  Um aluno pode se inscrever em vários cursos.
2.  Um curso pode ter vários alunos inscritos.

## A Solução (O Modelo)

Com base nas regras, identificamos um relacionamento de **Muitos-para-Muitos (N:N)** entre Alunos e Cursos. Para resolver isso, o modelo foi desenhado com três tabelas principais:

1.  **`Alunos`**: Armazena os dados cadastrais de cada aluno.
    - `ID_Aluno` (Chave Primária)
    - `Nome`
    - `Email`

2.  **`Cursos`**: Armazena a lista de cursos disponíveis.
    - `ID_Curso` (Chave Primária)
    - `Nome_Curso`

3.  **`Inscricoes`**: Esta é a **tabela de junção** que conecta as outras duas. Cada linha nesta tabela representa a inscrição de um aluno específico em um curso específico.
    - `ID_Inscricao` (Chave Primária)
    - `ID_Aluno` (Chave Estrangeira que aponta para `Alunos`)
    - `ID_Curso` (Chave Estrangeira que aponta para `Cursos`)

## O Código SQL

O arquivo `escola_schema.sql` neste diretório contém os comandos `CREATE TABLE` para construir fisicamente essas tabelas em um banco de dados SQL. Ele define as colunas, os tipos de dados e, mais importante, as **chaves primárias e estrangeiras** que garantem a integridade e os relacionamentos do nosso modelo.