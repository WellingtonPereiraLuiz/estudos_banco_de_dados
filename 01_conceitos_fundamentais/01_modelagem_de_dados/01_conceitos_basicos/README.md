# Conceitos Fundamentais de Modelagem de Dados

Este documento serve como um guia rápido sobre os pilares da modelagem de dados. A melhor maneira de pensar sobre isso é imaginar que estamos criando a **planta baixa** de um banco de dados antes de construí-lo.

---

## 1. Entidades

Uma **entidade** é qualquer "coisa", "sujeito" ou objeto do mundo real sobre o qual queremos armazenar informações. Em nossa planta baixa, as entidades são os **cômodos principais**.

**Exemplos:**
- Em um sistema de e-commerce: `Produto`, `Cliente`, `Pedido`.
- Em um sistema escolar: `Aluno`, `Professor`, `Curso`.
- Em uma rede social: `Usuário`, `Postagem`, `Comentário`.

No banco de dados, cada entidade se torna uma **tabela**.

---

## 2. Atributos

Os **atributos** são as características ou propriedades que descrevem uma entidade. Em nossa planta baixa, os atributos são os **móveis e detalhes de cada cômodo**.

**Exemplos:**
- A entidade `Aluno` pode ter os atributos:
  - `ID_Aluno`: Um número de identificação único (como um CPF ou RG).
  - `Nome`: O nome do aluno.
  - `Email`: O endereço de e-mail.
  - `Data_Nascimento`: A data de nascimento.

No banco de dados, cada atributo se torna uma **coluna** dentro de uma tabela.

### Atributo Especial: Chave Primária (Primary Key)

Toda tabela precisa ter um atributo (ou um conjunto deles) que sirva como um **identificador único** para cada registro. Chamamos isso de **Chave Primária**. Ela garante que não existam dois registros idênticos na mesma tabela. O `ID_Aluno` é o exemplo perfeito.

---

## 3. Relacionamentos

Os **relacionamentos** definem como as entidades se conectam umas com as outras. Em nossa planta baixa, são as **portas e corredores** que ligam os cômodos.

Existem três tipos principais de relacionamentos:

### a) Um-para-Um (1:1)
Ocorre quando um registro de uma tabela se conecta a **apenas um** registro de outra tabela.
- **Exemplo:** Um `Motorista` tem apenas uma `CarteiraDeHabilitacao`.

### b) Um-para-Muitos (1:N)
O mais comum. Ocorre quando um registro de uma tabela pode se conectar a **vários** registros de outra.
- **Exemplo:** Um `Cliente` pode fazer muitos `Pedidos`. Um `Pedido`, no entanto, pertence a apenas um `Cliente`.

### c) Muitos-para-Muitos (N:N)
Ocorre quando **muitos** registros de uma tabela podem se conectar a **muitos** registros de outra.
- **Exemplo:** Muitos `Alunos` podem se inscrever em muitos `Cursos`.

Para implementar um relacionamento Muitos-para-Muitos, é necessário criar uma terceira tabela, chamada de **tabela de junção** ou **tabela associativa**. Para o nosso exemplo, criaríamos a tabela `Inscricoes` para conectar `Alunos` e `Cursos`.