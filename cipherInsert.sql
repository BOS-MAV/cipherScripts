use cipher_prototype;
BULK INSERT POC.Property
FROM 'U:\cipher2.0\cipher2.0db-main\csv\property.txt'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',  --CSV field delimiter
    ROWTERMINATOR = '0x0a',   --Use to shift the control to next row
	maxerrors = 2
);
