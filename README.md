# Projeto Individual Módulo 4
Projeto do Curso da Resilia em parceria com o Senac.

Foi proposta a criação de uma modelagem de dados com três tabelas pré-existentes e teríamos que determinar os atributos dessas tabelas e também determinar se seria necessário a criação de novas tabelas.

Perguntas a serem respondidas:

1. Existem outras entidades além dessas três?
Sim, as entidades Disciplina, Docente e Instituicao.

2. Quais são os principais campos e tipos?
id_curso INT;
id_turma INT;
matricula_aluno INT;
matricula_docente INT;
id_disciplina INT;
cnpj_instituicao VARCHAR(255).

3. Como essas entidades estão relacionadas?
Por meio de chaves estrangeiras que estão referenciando chaves primárias.
Instituicao possui um ou mais Curso e Curso pertence a uma e somente uma Instituicao;
Instituicao possui um ou mais Docente e Docente pertence a uma e somente uma Instituicao;
Curso tem uma ou mais Disciplina e Disciplina pertence a um e somente um Curso;
Turma pertence a um e somente um Curso e Curso contém uma ou mais Turma;
Turma tem um ou mais Aluno e Aluno pertence a uma e somente uma Turma;
Turma tem um ou mais Docente e Docente pertence a uma e somente uma Turma.
