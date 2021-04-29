use cipher_prototype;
BULK INSERT POC.Population
FROM 'u:\cipher2.0\cipher2.0db-main\csv\population.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenoDef
FROM 'u:\cipher2.0\cipher2.0db-main\csv\phenodef.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.DataSource
FROM 'u:\cipher2.0\cipher2.0db-main\csv\datasource.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenoDataSourceLookup
FROM 'u:\cipher2.0\cipher2.0db-main\csv\PhenoDataSourceLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.CUI
FROM 'u:\cipher2.0\cipher2.0db-main\csv\cui.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenoCUILookup
FROM 'u:\cipher2.0\cipher2.0db-main\csv\PhenoCUILookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.ICDCode
FROM 'u:\cipher2.0\cipher2.0db-main\csv\ICDCode.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenoICDCodeLookup
FROM 'u:\cipher2.0\cipher2.0db-main\csv\PhenoICDCodeLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.Property
FROM 'u:\cipher2.0\cipher2.0db-main\csv\Property.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenotypeProperties
FROM 'u:\cipher2.0\cipher2.0db-main\csv\PhenotypeProperties.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.AltName
FROM 'u:\cipher2.0\cipher2.0db-main\csv\AltName.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenoAltNameLookup
FROM 'u:\cipher2.0\cipher2.0db-main\csv\PhenoAltNameLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.CodeBlock
FROM 'u:\cipher2.0\cipher2.0db-main\csv\CodeBlock.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.Lifestyle_Envi
FROM 'u:\cipher2.0\cipher2.0db-main\csv\Lifestyle_Envi.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.Disease
FROM 'u:\cipher2.0\cipher2.0db-main\csv\Disease.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.DiseaseDomain
FROM 'u:\cipher2.0\cipher2.0db-main\csv\DiseaseDomain.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.DiseaseDiseaseDomainLookup
FROM 'u:\cipher2.0\cipher2.0db-main\csv\DiseaseDiseaseDomainLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.LAB
FROM 'u:\cipher2.0\cipher2.0db-main\csv\LAB.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.LOINC
FROM 'u:\cipher2.0\cipher2.0db-main\csv\LOINC.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.LabLOINCLookup
FROM 'u:\cipher2.0\cipher2.0db-main\csv\LabLOINCLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.Author
FROM 'u:\cipher2.0\cipher2.0db-main\csv\Author.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.Publication
FROM 'u:\cipher2.0\cipher2.0db-main\csv\Publication.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PublicationAuthorLookup
FROM 'u:\cipher2.0\cipher2.0db-main\csv\PublicationAuthorLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenoPublicationLookup
FROM 'u:\cipher2.0\cipher2.0db-main\csv\PhenoPublicationLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenoAuthorLookup
FROM 'u:\cipher2.0\cipher2.0db-main\csv\PhenoAuthorLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);