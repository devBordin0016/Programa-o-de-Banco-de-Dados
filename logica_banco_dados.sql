CREATE DATABASE escola;
USE escola;
CREATE TABLE alunos (
  id_aluno INT PRIMARY KEY,
  nome VARCHAR(100),
  data_nascimento DATE,
  email VARCHAR(100)
);

CREATE TABLE cursos (
  id_curso INT PRIMARY KEY,
  nome_curso VARCHAR(100),
  carga_horaria INT
);

CREATE TABLE matriculas (
  id_matricula INT PRIMARY KEY,
  id_aluno INT,
  id_curso INT,
  data_matricula DATE,
FOREING KEY (id_aluno) alunos(id_aluno),
FOREING KEY (id_curso) cursos(id_curso)
);

ALTER TABLE alunos ADD Telefone VARCHAR(20);

ALTER TABLE cursos MODIFY COLUMN carga_horaria SMALLINT;

DROP TABLE matriculas;

INSERT INTO alunos ( id_aluno, nome, data_nascimento, email, Telefone)
VALUES
(1, 'Ana Souza', '2024-03-01', 'anasouza@gmail.com', '1199944446'),

INSERT INTO cursos (id_curso, nome_curso, carga_horaria)
VALUES
(101, 'Lógica de Programação', 60),
(102, 'Nuvem', 75);

INSERT INTO matriculas (id_matricula, id_aluno, id_curso, data_matricula)
VALUES
(1001, 1, 101, '2026-04-01'),
(1002, 2, 102, '2026-04-01);

UPDATE alunos SET Telefone = '119494949494' WHERE id_aluno = '1';
