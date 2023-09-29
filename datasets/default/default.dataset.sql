BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Test Record for Trackland Demo');
CREATE TABLE "Asset" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "AssetWarranty" (
	id INTEGER NOT NULL, 
	"StartDate" VARCHAR(255), 
	"AssetId" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "BusinessHours" (
	id INTEGER NOT NULL, 
	"FridayEndTime" VARCHAR(255), 
	"FridayStartTime" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsDefault" VARCHAR(255), 
	"MondayEndTime" VARCHAR(255), 
	"MondayStartTime" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"SaturdayEndTime" VARCHAR(255), 
	"SaturdayStartTime" VARCHAR(255), 
	"SundayEndTime" VARCHAR(255), 
	"SundayStartTime" VARCHAR(255), 
	"ThursdayEndTime" VARCHAR(255), 
	"ThursdayStartTime" VARCHAR(255), 
	"TimeZoneSidKey" VARCHAR(255), 
	"TuesdayEndTime" VARCHAR(255), 
	"TuesdayStartTime" VARCHAR(255), 
	"WednesdayEndTime" VARCHAR(255), 
	"WednesdayStartTime" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "ContractLineItem" (
	id INTEGER NOT NULL, 
	"Quantity" VARCHAR(255), 
	"UnitPrice" VARCHAR(255), 
	"PricebookEntryId" VARCHAR(255), 
	"ServiceContractId" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "DandBCompany" (
	id INTEGER NOT NULL, 
	"DunsNumber" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Entitlement" (
	id INTEGER NOT NULL, 
	"CasesPerEntitlement" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"IsPerIncident" VARCHAR(255), 
	"RemainingCases" VARCHAR(255), 
	"RemainingWorkOrders" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"WorkOrdersPerEntitlement" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"AssetId" VARCHAR(255), 
	"AssetWarrantyId" VARCHAR(255), 
	"BusinessHoursId" VARCHAR(255), 
	"ContractLineItemId" VARCHAR(255), 
	"LocationId" VARCHAR(255), 
	"ServiceContractId" VARCHAR(255), 
	"SvcApptBookingWindowsId" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Location" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "OperatingHours" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"TimeZone" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Pricebook2" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "PricebookEntry" (
	id INTEGER NOT NULL, 
	"UnitPrice" VARCHAR(255), 
	"Pricebook2Id" VARCHAR(255), 
	"Product2Id" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Product2" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "ServiceContract" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
COMMIT;
