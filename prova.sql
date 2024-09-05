/* 3 */

create database prova_3bimestre_22c;

use prova_3bimestre_22c;

create table funcionarios (
	id_funcionario int primary key,
    nome_funcionario varchar(100),
    cargo varchar(100),
    salario decimal(10, 2)
);

create table funcionarios_projetos (
	id_projeto int primary key auto_increment,
    foreign key (id_funcionario) references funcionarios(id_funcionario), /* tentei professor, nem nas minhas anotações estava a maneira certa de se fazer */
    data_inicio date,
    data_fim date
);

insert into funcionarios (id_funcionario, nome_funcionario, cargo, salario)
values (1, "João Silva", "Desenvolvedor", "5500.00"), 
		(2, "Maria Oliveira", "Analista de Sistemas", "6000.00"),
        (3, "Carlos Pereira", "Gerente de Projetos", "7500.00"),
        (4, "Ana Costa", "Designer", "4800.00"),
        (5, "Lucas Almeida", "Consultor de TI", "6700.00");
        
insert into funcionarios_projetos (id_projeto, id_funcionario, data_inicio, data_fim)
values (1, 1, "2024-01-10", "2024-06-30"), 
		(2, 2, "2024-02-01", "2024-07-31"),
        (3, 3, "2024-03-15", "2024-09-15"),
        (4, 4, "2024-04-20", "2024-10-20"),
        (5, 5, "2024-05-01", "2024-11-30");