
create database db_DailyBill

go
use db_DailyBill

---------- Creation des Tables

create table t_user
(
	u_name varchar(100) not null,
	u_pass varchar(25) not null,
	u_accreditation varchar(50) not null,
	constraint pf_user primary key(u_name)
)

create table t_journalier
(
	id int not null,
	nom varchar(50) not null,
	postnom varchar(50) not null,
	prenom varchar(50) not null,
	lieu_naissance text,
	date_naissance date,
	etat_civil varchar(100),
	piece_identite char(255),
	numero_piece_identite varchar(50),
	constraint pk_jpurnalier primary key(id)
)

create table t_service
(
	id int not null,
	serviceItem varchar(100) not null,
	descriptionItem text,
	constraint pk_service primary key(id)
)

create table t_salaire
(
	id int not null,
	salaireItem varchar(255) not null,
	descriptionItem text,
	montant float not null,
	id_service int not null,
	constraint pk_salaire primary key(id)
)

create table t_prestation
(
	id varchar(50) not null,
	id_journalier int not null,
	id_service int not null,
	date_prestation date,
	heure_debut text,
	heure_fin text
	constraint pk_prestation primary key(id)

)

create table t_paiement
(
	id int not null identity(1,1),
	id_journalier int not null,
	id_prestation varchar(50) not null,
	date_paiement date,
	montant float not null,
	u_name varchar(100) not null,
	constraint pk_paiement primary key(id)
)


---------- Autres contraintes

alter table t_journalier add constraint Unique_Name unique(nom, postnom, prenom,numero_piece_identite)
alter table t_service add constraint Unique_Service unique(serviceItem)
alter table t_salaire add constraint Unique_Salaire unique(salaireItem)

alter table t_prestation add constraint fk_journalier_prestation foreign key (id_journaliere) references t_journalier(id) on delete no action
alter table t_prestation add constraint fk_service_prestation foreign key (id_service) references t_service(id) on delete no action

alter table t_paiement add constraint fk_journalier_paiement foreign key (id_journalier) references t_journalier(id) on delete no action
alter table t_paiement add constraint fk_prestation_paiement foreign key (id_prestation) references t_prestation(id) on delete no action
alter table t_paiement add constraint fk_user_paiement foreign key (u_name) references t_user(u_name) on delete no action

