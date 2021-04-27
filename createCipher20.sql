
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

create table POC.CUI (
    CUIID           int primary key,
    CUI             varchar(8),
    CUIDesc         nvarchar(max)
);

create table POC.PhenoCUILookup (
    PhenotypeID     int references POC.PhenoDef(PhenotypeID),
    CUIID           int references POC.CUI(CUIID),
    constraint pkclpk primary key (PhenotypeID,CUIID)
);

create table POC.ICDCode (
    ICDCodeID       int identity primary key,
    ICDCODE         varchar(8),
    ICDType         nvarchar(max),
    ICDDesc         nvarchar(max)
);

create table POC.PhenoICDCodeLookup (
    ICDCodeID       int references POC.ICDCode(ICDCodeID),
    PhenotypeID     int references POC.PhenoDef(PhenotypeID),
    constraint phICDpk primary key (ICDCodeID,PhenotypeID)
);

create table POC.Property (
    PropertyID      int primary key,
    PropertyName    varchar(50),
    PropertyType    varchar(10)
);

create table POC.PhenotypeProperties (
    PhenotypeID     int references POC.PhenoDef(PhenotypeID),
    PropertyID      int references POC.Property(PropertyID),
    PropValue       nvarchar(max),
    constraint phproppk primary key (PhenotypeID,PropertyID)
);

create table POC.AltName (
    AltNameID       int identity primary key,
    AltName         varchar(50)
);

create table POC.PhenoAltNameLookup (
    AltNameID       int references POC.AltName(AltNameID),
    PhenoTypeID     int references POC.PhenoDef(PhenoTypeID),
    constraint phanpk primary key (AltNameID,PhenoTypeID)
);

create table POC.CodeBlock (
    CodeBlockID     int identity primary key,
    CodeBlockLang   varchar(50),
    CodeBlockDesc   nvarchar(max),
    CodeBlockText   nvarchar(max),
    PhenotypeID     int references POC.PhenoDef(PhenotypeID)
);

create table POC.Lifestyle_Envi (
    LsPhenoTypeID            int references POC.PhenoDef(PhenotypeID),
    LEType                      varchar(50),
    AlgorithmValidation         nvarchar(max),
    ValidationDesc              nvarchar(max),
    AlgoPerformanceMeasures     nvarchar(max),
    constraint lfspk primary key (LsEnvPhenoTypeID)
);

create table POC.Disease (
    DPhenoTypeID        int references POC.PhenoDef(PhenotypeID),
    DiseaseShortName    varchar(50),
    constraint dispk primary key (DPhenoTypeID)
);

create table POC.DiseaseDomain (
    DiseaseDomainID     int primary key,
    DiseaseDomainName   varchar(50)
);

create table POC.DiseaseDiseaseDomainLookup (
    DiseaseDomainID     int references POC.DiseaseDomainID(DiseaseDomainID),
    DPhenoTypeID        int references POC.Disease(DPhenoTypeID),
    constraint dddlpk primary key (DiseaseDomainID,DPhenotypeID)
);




