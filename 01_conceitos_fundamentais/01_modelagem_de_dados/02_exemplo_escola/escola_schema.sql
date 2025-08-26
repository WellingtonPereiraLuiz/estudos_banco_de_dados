-- Arquivo: escola_schema.sql
-- Descrição: Script para criar a estrutura do banco de dados de uma mini-escola,
-- com base no modelo de dados definido.

-- 1. Tabela de Alunos (Entidade Alunos)
-- Esta tabela armazena as informações de cada aluno.
CREATE TABLE Alunos (
    ID_Aluno INT PRIMARY KEY,  -- Identificador único para cada aluno (nunca se repete)
    Nome VARCHAR(100) NOT NULL, -- Nome do aluno, não pode ser vazio
    Email VARCHAR(100) NOT NULL UNIQUE -- Email do aluno, não pode ser vazio e não pode ter duplicado
);

-- 2. Tabela de Cursos (Entidade Cursos)
-- Esta tabela armazena os cursos disponíveis.
CREATE TABLE Cursos (
    ID_Curso INT PRIMARY KEY, -- Identificador único para cada curso
    Nome_Curso VARCHAR(100) NOT NULL -- Nome do curso, não pode ser vazio
);

-- 3. Tabela de Inscrições (Tabela de Relacionamento)
-- Esta é a nossa "tabela de conexão" ou "tabela associativa".
-- Ela conecta um Aluno a um Curso, resolvendo o relacionamento Muitos-para-Muitos.
CREATE TABLE Inscricoes (
    ID_Inscricao INT PRIMARY KEY, -- Identificador único para a inscrição
    ID_Aluno INT, -- "Porta" que leva para a tabela de Alunos
    ID_Curso INT, -- "Porta" que leva para a tabela de Cursos

    -- Definindo as "portas" como Chaves Estrangeiras (Foreign Keys)
    -- Isso garante que só podemos inscrever um aluno que REALMENTE EXISTE
    -- em um curso que REALMENTE EXISTE.
    FOREIGN KEY (ID_Aluno) REFERENCES Alunos(ID_Aluno),
    FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID_Curso)
);

-- Exemplo de como inserir dados (opcional, para testar)
INSERT INTO Alunos (ID_Aluno, Nome, Email) VALUES (1, 'João Silva', 'joao.silva@email.com');
INSERT INTO Alunos (ID_Aluno, Nome, Email) VALUES (2, 'Maria Santos', 'maria.santos@email.com');

INSERT INTO Cursos (ID_Curso, Nome_Curso) VALUES (101, 'Introdução a SQL');
INSERT INTO Cursos (ID_Curso, Nome_Curso) VALUES (102, 'Python para Dados');

-- Inscrevendo João no curso de SQL.
INSERT INTO Inscricoes (ID_Inscricao, ID_Aluno, ID_Curso) VALUES (1, 1, 101);

-- Inscrevendo Maria no curso de SQL e também no de Python.
INSERT INTO Inscricoes (ID_Inscricao, ID_Aluno, ID_Curso) VALUES (2, 2, 101);
INSERT INTO Inscricoes (ID_Inscricao, ID_Aluno, ID_Curso) VALUES (3, 2, 102);