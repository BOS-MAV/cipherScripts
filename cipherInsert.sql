use cipher_prototype;
BULK INSERT POC.Population
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\population.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenoDef
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\phenodef.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.DataSource
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\datasource.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenoDataSourceLookup
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\PhenoDataSourceLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.CUI
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\cui.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenoCUILookup
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\PhenoCUILookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.ICDCode
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\ICDCode.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenoICDCodeLookup
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\PhenoICDCodeLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.Property
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\Property.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenotypeProperties
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\PhenotypeProperties.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.AltName
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\AltName.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenoAltNameLookup
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\PhenoAltNameLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.CodeBlock
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\CodeBlock.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

/*BULK INSERT POC.Lifestyle_Envi
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\Lifestyle_Envi.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);
no file*/

BULK INSERT POC.Disease
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\Disease.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.DiseaseDomain
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\DiseaseDomain.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.DiseaseDiseaseDomainLookup
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\DiseaseDiseaseDomainLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.LAB
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\LAB.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.LOINC
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\LOINC.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.LabLOINCLookup
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\LabLOINCLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.Author
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\Author.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.Publication
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\Publication.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PublicationAuthorLookup
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\PublicationAuthorLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenoPublicationLookup
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\PhenoPublicationLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);

BULK INSERT POC.PhenoAuthorLookup
FROM 'C:\Users\VHABHSRUSSOJ1\cipher2.0\cipher2.0db\csv\PhenoAuthorLookup.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a'
);