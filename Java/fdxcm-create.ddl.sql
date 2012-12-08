create database fdxcmdb;

use fdxcmdb;

create table emp
(
	id					int unsigned not null auto_increment,
	fname				varchar(30) not null,
	lname				varchar(30) not null,
	cnum				varchar(30),
	fdxnum				mediumint unsigned not null,
	hire_date			date,
	dob					date,
	active				boolean not null,
	start_date			date,
	end_date			date,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id)
);

create table user
(
	id 					mediumint unsigned not null auto_increment,
	emp_id				int unsigned not null,
    name 				varchar(30) not null,
	email				varchar(75) not null,
	pwd					varchar(50) not null,
	contractor			boolean not null,
	active				boolean not null,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id),
	foreign key (emp_id) references emp(id)
);

create table term
(
	id					smallint unsigned not null auto_increment,
	fdxname				varchar(10) not null,
	fdxnum				mediumint unsigned not null,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id)
);

create table psa
(
	id					mediumint unsigned not null auto_increment,
	cname				varchar(30),
	fdxnum				mediumint unsigned not null,
	fdxname				varchar(30) not null,
	start_date			date,
	end_date			date,
	active				boolean not null,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id)
);

create table vehicle_type
(
	id					tinyint unsigned not null auto_increment,
	name				varchar(30) not null,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id)
);

create table vehicle
(
	id					mediumint unsigned not null auto_increment,
	cnum				varchar(30),
	cname				varchar(50),
	vin					varchar(50),
	fdxnum				mediumint unsigned not null,
	type_id				tinyint unsigned,
	diesel				boolean,
	start_date			date,
	end_date			date,
	active				boolean not null,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id),
	foreign key (type_id) references vehicle_type(id)
);

create table daily_data
(
	id					int unsigned not null auto_increment,
	emp_id				int unsigned not null,
	d_stop				smallint,
	d_pkg				smallint,
	p_stop				smallint,
	p_pkg				smallint,
	calltag				tinyint,
	exceptions			tinyint,
	dna					tinyint,
	ils					decimal(5,2),
	epu					tinyint,
	lpu					tinyint,
	start_hour			time,
	end_hour			time,
	date				date,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id),
	foreign key (emp_id) references emp(id)
);

create table emp_x_term
(
	id					mediumint unsigned not null auto_increment,
	emp_id				int unsigned not null,
	term_id				smallint unsigned not null,
	start_date			date,
	end_date			date,
	active				boolean not null,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id),
	foreign key (emp_id) references emp(id),
	foreign key (term_id) references term(id)
);

create table emp_x_mgr
(
	id					mediumint unsigned not null auto_increment,
	emp_id				int unsigned not null,
	mgr_id				int unsigned not null,
	start_date			date,
	end_date			date,
	active				boolean not null,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id),
	foreign key (emp_id) references emp(id),
	foreign key (mgr_id) references emp(id)
);

create table emp_x_vehicle
(
	id					mediumint unsigned not null auto_increment,
	emp_id				int unsigned not null,
	vehicle_id			mediumint unsigned not null,
	start_date			date not null,
	end_date			date,
	active				boolean not null,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id),
	foreign key (emp_id) references emp(id),
	foreign key (vehicle_id) references vehicle(id)
);

create table emp_x_psa
(
	id					mediumint unsigned not null auto_increment,
	emp_id				int unsigned not null,
	psa_id				mediumint unsigned not null,
	start_date			date not null,
	end_date			date,
	active				boolean not null,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id),
	foreign key (emp_id) references emp(id),
	foreign key (psa_id) references psa(id)
);

-- salary, hourly, pto, tmp, bonus
create table flat_pay_type
(
	id					mediumint unsigned not null auto_increment,
	name				varchar(30) not null,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id)
);

-- hourly, weekly, biweekly, ...
create table freq
(
	id					tinyint unsigned not null auto_increment,
	name				varchar(30) not null,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id)
);

create table flat_pay
(
	id					mediumint unsigned not null auto_increment,
	flat_pay_type_id	mediumint unsigned not null,
	emp_id				int unsigned not null,
	amt					DECIMAL(8,2) not null,
	freq_id				tinyint unsigned not null,
	start_date			datetime not null,
	end_date			datetime,
	active				boolean not null,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id),
	foreign key (emp_id) references emp(id),
	foreign key (flat_pay_type_id) references flat_pay_type(id),
	foreign key (freq_id) references freq(id)
);

create table prod_pay
(
	id					mediumint unsigned not null auto_increment,
	emp_id				int unsigned not null,
	d_stop				smallint unsigned,
	d_pkg				smallint unsigned,
	p_stop				smallint unsigned,
	p_pkg				smallint unsigned,
	start_date			datetime not null,
	end_date			datetime,
	active				boolean not null,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id),
	foreign key (emp_id) references emp(id)
);


create table notes
(
	id					mediumint unsigned not null auto_increment,
	emp_id				int unsigned not null,
	notes				varchar(500) not null,
	start_date			datetime not null,
	end_date			datetime,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id),
	foreign key (emp_id) references emp(id)
);

create table thresholds
(
	id					mediumint unsigned not null auto_increment,
	emp_id				int unsigned not null,
	min					mediumint unsigned,
	max					mediumint unsigned,
	start_date			date not null,
	end_date			date,
	active				boolean not null,
	created_ts			datetime not null,
	modified_ts			datetime,
	primary key (id),
	foreign key (emp_id) references emp(id)
);
