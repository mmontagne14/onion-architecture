CREATE TABLE IF NOT EXISTS `__EFMigrationsHistory` (
    `MigrationId` varchar(95) NOT NULL,
    `ProductVersion` varchar(32) NOT NULL,
    CONSTRAINT `PK___EFMigrationsHistory` PRIMARY KEY (`MigrationId`)
);

CREATE TABLE `Products` (
    `Id` int NOT NULL,
    `Name` nvarchar(max) NULL,
    `Barcode` nvarchar(max) NULL,
    `Description` nvarchar(max) NULL,
    `Rate` decimal(18,2) NOT NULL,
    CONSTRAINT `PK_Products` PRIMARY KEY (`Id`)
);

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
VALUES ('20200928235506_Initial', '3.1.8');

ALTER TABLE `Products` MODIFY COLUMN `Rate` decimal(65,30) NOT NULL;

ALTER TABLE `Products` MODIFY COLUMN `Name` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Products` MODIFY COLUMN `Description` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Products` MODIFY COLUMN `Barcode` longtext CHARACTER SET utf8mb4 NULL;

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
VALUES ('20200929000540_MySqlInitial', '3.1.8');

