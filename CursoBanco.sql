
CREATE TABLE public.projeto (
                codigo VARCHAR(100) NOT NULL,
                nome_proj VARCHAR(100),
                CONSTRAINT pk_codigo PRIMARY KEY (codigo)
);


CREATE TABLE public.funcionarios (
                cpf VARCHAR(15) NOT NULL,
                nome VARCHAR(255),
                sexo CHAR(2),
                cidade VARCHAR(255),
                uf CHAR(2),
                pais VARCHAR(100),
                telefone VARCHAR(10),
                CONSTRAINT pk_cpf PRIMARY KEY (cpf)
);


CREATE TABLE public.horarios (
                registro INTEGER,
                cpf VARCHAR(15),
                hora_entrada VARCHAR(100),
                hora_saida VARCHAR(100),
                data DATE
);


CREATE TABLE public.func_empregados (
                cpf VARCHAR(15) NOT NULL,
                codigo_proj VARCHAR(100),
                horas_trabalhadas VARCHAR(100)
);


ALTER TABLE public.func_empregados ADD CONSTRAINT fk_cpf
FOREIGN KEY (cpf)
REFERENCES public.funcionarios (cpf)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.horarios ADD CONSTRAINT fk_cpf
FOREIGN KEY (cpf)
REFERENCES public.funcionarios (cpf)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
