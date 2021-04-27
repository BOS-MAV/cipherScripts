
create table POC.Population (
    PopulationID    int identity primary key,
    PopulationDesc  varchar(50)
);

create table POC.PhenoDef (
    PhenoTypeID     int identity primary key,
    PhenotypeName   varchar(30),
    PhenoDesc       varchar(255),
    DateAdded       datetime,
    LastModified    datetime,
    STATUS          varchar(20),
    VERSION         int,
    TYPE            char(1),
    PopulationID    int references POC.Population(populationid)
);

create table POC.DataSource (
    DataSourceID    int identity primary key,
    DataSource      varchar(50)
);

create table POC.PhenoDataSourceLookup (
    DataSourceID    int references POC.DataSource(DataSourceID),
    PhenoTypeID     int references POC.PhenoDef(PhenoTypeID),
    constraint pdspk primary key (DataSourceID,PhenoTypeID)
);


