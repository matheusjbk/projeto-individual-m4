DROP DATABASE IF EXISTS projeto_m4;

CREATE DATABASE projeto_m4 CHARACTER SET utf8 COLLATE utf8_general_ci;

USE projeto_m4;

CREATE TABLE instituicao (
	cnpj_instituicao VARCHAR(255) PRIMARY KEY NOT NULL,
    nome_instituicao VARCHAR(255) NOT NULL
);

CREATE TABLE curso (
	id_curso INT PRIMARY KEY NOT NULL,
    cnpj_instituicao VARCHAR(255) NOT NULL,
    duracao_horas TIME NOT NULL,
    FOREIGN KEY (cnpj_instituicao) REFERENCES instituicao (cnpj_instituicao)
);

CREATE TABLE disciplina (
	id_disciplina INT PRIMARY KEY NOT NULL,
    id_curso INT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES curso (id_curso)
);

CREATE TABLE turma (
	id_turma INT PRIMARY KEY NOT NULL,
    id_curso INT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES curso (id_curso)
);

CREATE TABLE aluno (
	matricula_aluno INT PRIMARY KEY NOT NULL,
    id_turma INT NOT NULL,
    cpf_aluno VARCHAR(255) NOT NULL,
    nome_aluno VARCHAR(255) NOT NULL,
    sobrenome_aluno VARCHAR(255) NOT NULL,
    data_nasc_aluno DATE NOT NULL,
    FOREIGN KEY (id_turma) REFERENCES turma (id_turma)
);

CREATE TABLE docente (
	matricula_docente INT PRIMARY KEY NOT NULL,
    id_turma INT NOT NULL,
    cnpj_instituicao VARCHAR(255) NOT NULL,
    cpf_docente VARCHAR(255) NOT NULL,
    nome_docente VARCHAR(255) NOT NULL,
    sobrenome_docente VARCHAR(255) NOT NULL,
    data_nasc_docente DATE NOT NULL,
    FOREIGN KEY (id_turma) REFERENCES turma (id_turma),
    FOREIGN KEY (cnpj_instituicao) REFERENCES instituicao (cnpj_instituicao)
);