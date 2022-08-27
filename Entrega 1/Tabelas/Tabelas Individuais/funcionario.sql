CREATE TABLE Funcionario(
    cpf_func VARCHAR2(11) NOT NULL,
    data_de_admissao DATE NOT NULL,
    cpf_supervisor VARCHAR2(11) NOT NULL,
    
    CONSTRAINT funcionario_pk PRIMARY KEY (cpf_func),
    CONSTRAINT funcionario_fk FOREIGN KEY (cpf_func) REFERENCES Usuario(cpf),
    CONSTRAINT funcionario_fk1 FOREIGN KEY (cpf_supervisor) REFERENCES Funcionario(cpf_func)
);
