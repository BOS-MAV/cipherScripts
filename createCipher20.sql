
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
    constraint lfspk primary key (LsPhenoTypeID)
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
    DPhenoTypeID        int references POC.Disease(DPhenoTypeID),
    DiseaseDomainID     int references POC.DiseaseDomain(DiseaseDomainID),
    constraint dddlpk primary key (DiseaseDomainID,DPhenotypeID)
);

create table POC.LAB (
    LPhenoTypeID        int references POC.PhenoDef(PhenotypeID),
    LabType             varchar(50),
    Units               Varchar(20),
    MinResult           float,
    MaxResult           float,
    ResultSet           varchar(50),
    constraint labpk primary key (LPhenoTypeID)
);

create table POC.LOINC (
    LOINCID             int identity primary key,
    LOINCCode           varchar(7),
    LoincDesc           nvarchar(max)
);

create table POC.LabLOINCLookup (
    LPhenoTypeID        int references POC.LAB(LPhenotypeID),
    LOINCID             int references POC.LOINC(LOINCID),
    constraint labloincpk primary key (LPhenoTypeID,LOINCID)
);

create table POC.Author (
    AuthorID            int identity primary key,
    AuthorName          varchar(50),
    AuthAffiliation     varchar(50)
);


create table POC.Publication (
    PublicationID       int identity primary key,
    Title               varchar(50),
    DatePub             date,
    Journal             varchar(50),
    LeadAuthorID        int references POC.Author(AuthorID)
);

create table POC.PublicationAuthorLookup (
    AuthorID            int references POC.Author(AuthorID),
    PublicationID       int references POC.Publication(PublicationID),
    constraint pubauthpk primary key (authorid,publicationid)
);

create table POC.PhenoPublicationLookup (
    PublicationID       int references POC.Publication(PublicationID),
    PhenotypeID         int references POC.PhenoDef(PhenotypeID),
    constraint phenpublpk primary key (PublicationID,phenotypeid)
);

create table POC.PhenoAuthorLookup (
    AuthorID            int references POC.Author(AuthorID),
    PhenotypeID         int references POC.PhenoDef(PhenotypeID),
    constraint phenauthlpk primary key (AuthorID,phenotypeid)
);








