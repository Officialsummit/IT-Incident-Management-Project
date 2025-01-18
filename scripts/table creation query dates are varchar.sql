--create status table

--CREATE TABLE dim_status (
    idStatus INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    active BIT NOT NULL,
    status_description VARCHAR(50) NOT NULL,
    date_Stamp DATETIME NULL,
    data_source VARCHAR(100) NULL
);

--CREATE TABLE dim_employee (
    Employee_number  varchar(50) PRIMARY KEY NOT NULL,
    date_Stamp DATETIME NULL,
    data_source VARCHAR(100) NULL
);

--CREATE TABLE dim_priority (
    idPriority INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    impact VARCHAR(50) NOT NULL,
    urgency VARCHAR(50) NOT NULL,
    priority VARCHAR(50) NOT NULL,
    date_Stamp DATETIME NULL,
    data_source VARCHAR(100) NULL
);

--CREATE TABLE dim_date (
    idDate VARCHAR(50) PRIMARY KEY NOT NULL,
    date DATETIME NOT NULL,
    year VARCHAR(50) NOT NULL,
    month INT NOT NULL,
    day INT NOT NULL,
	date_Stamp DATETIME NULL,
    data_source VARCHAR(100) NULL
  
);

--CREATE TABLE dim_category (
    idCategory INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    category VARCHAR(50) NOT NULL,
    subcategory VARCHAR(50) NOT NULL,
    date_Stamp DATETIME NULL,
    data_source VARCHAR(100) NULL
);


--CREATE TABLE dim_Reported (
    id_incident INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    incident_number VARCHAR(50) NOT NULL,
	location VARCHAR(50) NOT NULL,
    customer_number VARCHAR(50) NOT NULL,
    contact_type VARCHAR(50) NOT NULL,
	date_Stamp DATETIME NULL,
    data_source VARCHAR(100) NULL
);



--FactTable:
CREATE TABLE fact_Incident_Management (
    idIncidentMgmt INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    id_incident INT NOT NULL,
    Responsible VARCHAR(50) NOT NULL,
    idStatus INT NOT NULL,
    idPriority INT NOT NULL,
    idCategory INT NOT NULL,
    Opened_by VARCHAR(50) NOT NULL,
    Opened_at VARCHAR(50) NOT NULL,
    Created_by VARCHAR(50) NOT NULL,
    Created_at VARCHAR(50) NOT NULL,
    Updated_by VARCHAR(50) NOT NULL,
    Updated_at VARCHAR(50) NOT NULL,
    Resolved_by VARCHAR(50) NOT NULL,
    Resolved_at VARCHAR(50) NOT NULL,
    Closed_at VARCHAR(50) NOT NULL,
    Close_code VARCHAR(50) NULL,
    SLA TinyInt NULL,
    Notify TinyInt NULL,
    Knowledge TinyInt NULL,
    Priority_confirmation TinyInt NULL,
    Customer_symptom VARCHAR(255) NULL,
    Reassignment_count INT NULL,
    Reopen_count INT NULL,
    Modify_count INT NULL,
    Assigned_Group VARCHAR(50) NULL,
    date_stamp DATETIME NULL,
    Data_Source VARCHAR(50) NULL,
    CONSTRAINT FK_dim_Reported FOREIGN KEY (id_incident) REFERENCES dim_Reported(id_incident),
    CONSTRAINT FK_dim_Employee_Refponsible FOREIGN KEY (Responsible) REFERENCES dim_employee(Employee_number),
    CONSTRAINT FK_dim_status FOREIGN KEY (idStatus) REFERENCES dim_status(idStatus),
    CONSTRAINT FK_dim_priority FOREIGN KEY (idPriority) REFERENCES dim_priority(idPriority),
    CONSTRAINT FK_dim_category FOREIGN KEY (idCategory) REFERENCES dim_category(idCategory),
    CONSTRAINT FK_dim_Employee_Opened_by FOREIGN KEY (Opened_by) REFERENCES dim_employee(Employee_number),
    CONSTRAINT FK_dim_date_Opened_at FOREIGN KEY (Opened_at) REFERENCES dim_date(idDate),
    CONSTRAINT FK_dim_Employee_Created_by FOREIGN KEY (Created_by) REFERENCES dim_employee(Employee_number),
    CONSTRAINT FK_dim_date_Created_at FOREIGN KEY (Created_at) REFERENCES dim_date(idDate),
    CONSTRAINT FK_dim_Employee_Updated_by FOREIGN KEY (Updated_by) REFERENCES dim_employee(Employee_number),
    CONSTRAINT FK_dim_date_Updated_at FOREIGN KEY (Updated_at) REFERENCES dim_date(idDate),
    CONSTRAINT FK_dim_Employee_Resolved_by FOREIGN KEY (Resolved_by) REFERENCES dim_employee(Employee_number),
    CONSTRAINT FK_dim_date_Resolved_at FOREIGN KEY (Resolved_at) REFERENCES dim_date(idDate),
    CONSTRAINT FK_dim_date_Close_at FOREIGN KEY (Closed_at) REFERENCES dim_date(idDate)
);
