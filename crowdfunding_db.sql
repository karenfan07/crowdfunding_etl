
-- Drop Tables if Existing
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;


-- Specify Data Types, Primary Keys & Foreign Keys referring to QuickDBD
-- Import CSV Files Into Corresponding SQL Table

CREATE TABLE "campaign" (
	"contact_id" Integer NOT null,
	"company_name" Varchar(100) NOT null,
	"description" text not null,
	"goal"
	"pledged"
	"outcome" Varchar(10) not null,
	"backers_count" integer not null,
	"country" varchar(10) not null,
	"currency" varchar(10) not null,
	"launch_date" date not null,
	"end_date" date not null,
	"category_id" varchar(10) not null,
	"subcategory_id" varchar(10) not null,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "contacts" (
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
	"email" varchar(100) NOT NULL
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "category" (
    "category_id" varchar(10)  NOT NULL,
	"category_name" varchar(50) NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(10)   NOT NULL,
    "subcategory_name" VARCHAR(50)  NOT NULL,
	CONSTRAINT "pk_subcategory" PRIMARY KEY ( 
		"subcategory_id"
	)
);


ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");



-- Query * FROM Each Table Confirming Data
SELECT * FROM Campaign;
SELECT * FROM Contacts;
SELECT * FROM Category;
SELECT * FROM SubCategory;
