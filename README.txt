DOCUMENTAÇÃO DO BANCO DE DADOS - SISTEMA ESCOLA DE IDIOMAS
-----------------------------------------------------------------------

Este documento explica as regras de como as informações da escola se conectam,
garantindo que o sistema funcione de forma lógica e sem erros.


--- Relação 1: CURSO e TURMA ---

REGRA 1: Um CURSO pode ter várias TURMAS. (Cardinalidade 1,N)

REGRA 2: Uma TURMA pertence a um, e somente um, CURSO. (Cardinalidade 1,1)


--- Relação 2: PROFESSOR e TURMA ---

REGRA 1: Um PROFESSOR pode dar aula para as TURMAS do idioma que o professor oferta. (Cardinalidade 1,N)

REGRA 2: Uma TURMA tem um, e somente um, PROFESSOR. (Cardinalidade 1,1)



--- Relação 3: MATRÍCULA (A ligação entre Aluno e Turma) ---

A Matrícula é uma entidade associativa, funciona como uma entidade e relação ao mesmo tempo

REGRA 1: Uma TURMA tem várias MATRÍCULAS. (Cardinalidade 1,N)

REGRA 2: Um ALUNO pode ter várias MATRÍCULAS. (Cardinalidade 1,N)

-----------------------------------------------------------------------