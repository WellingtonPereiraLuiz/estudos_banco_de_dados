# Mini Aula: Minicurso de SQL (Código Fonte TV)

Este diretório contém minhas anotações, scripts e aprendizados referentes à aula "Minicurso de SQL (Saia do Zero em 1 Hora)", ministrada pelo canal **Código Fonte TV**.

## Informações da Aula

- **Título Original:** Minicurso de SQL (Saia do Zero em 1 Hora)
- **Autor/Canal:** Código Fonte TV
- **Link do Vídeo:** https://youtu.be/dpanYy8IrcU

## Descrição

Nesta aula, o foco principal é apresentar os fundamentos da linguagem SQL para iniciantes, permitindo que qualquer pessoa saia do zero e consiga realizar as principais operações em um banco de dados relacional.

## Principais Tópicos Abordados

- **O que é SQL?** E a diferença entre SQL e um SGBD (Sistema de Gerenciamento de Banco de Dados).
- **CRUD:** Conceito e aplicação dos quatro comandos essenciais:
    - **C**REATE (`INSERT`)
    - **R**EAD (`SELECT`)
    - **U**PDATE (`UPDATE`)
    - **D**ELETE (`DELETE`)
- **Criação de Tabelas:** Uso do comando `CREATE TABLE` para definir a estrutura dos dados.
- **Filtragem de Dados:** A importância e o uso da cláusula `WHERE` para consultas específicas.
- **Boas Práticas:** Dicas sobre como escrever queries SQL de forma mais legível e organizada.

## Meus Aprendizados e Anotações

(Esta é uma seção para você personalizar com suas próprias palavras)

Um ponto crucial que aprendi e que foi muito enfatizado na aula é o **cuidado extremo ao usar `UPDATE` e `DELETE`**. Esquecer a cláusula `WHERE` pode resultar na alteração ou exclusão de **todos os dados** de uma tabela, o que seria catastrófico em um ambiente real. A sintaxe é simples, mas o impacto de um erro pode ser gigante.

```sql
-- Exemplo de um comando perigoso se executado sem o WHERE
UPDATE clientes SET status = 'inativo'; -- ISSO ATUALIZARIA TODOS OS CLIENTES!

-- A forma correta e segura
UPDATE clientes SET status = 'inativo' WHERE id_cliente = 123;