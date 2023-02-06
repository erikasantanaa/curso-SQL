
--IF/ELSE


DECLARE @NOME VARCHAR (30),
				@MEDIA REAL,
				@RESULTADO VARCHAR (10)
SELECT
		@NOME = nome_aluno,
		@MEDIA = (tbl_alunos.nota1 + tbl_alunos.nota2 + tbl_alunos.nota3 + tbl_alunos.nota4) / 4.00
FROM tbl_alunos
WHERE nome_aluno = 'Alice'
		IF @MEDIA >= 7.00
		BEGIN
				SELECT @RESULTADO = 'Aprovado';
		END;
		ELSE
		BEGIN
				SELECT @RESULTADO = 'Reprovado'
		END;

		SELECT ' O aluno ' + @NOME + ' está ' + @RESULTADO + 
					' com média ' + CAST(@MEDIA AS VARCHAR);