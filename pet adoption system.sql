 --create database
  create database Pet_Adoption_System;

  --create table donation
 CREATE TABLE Donation (
    D_ID INT identity(1,1) PRIMARY KEY,
    F_Name VARCHAR(50) NOT NULL,
    L_Name VARCHAR(50) NOT NULL,
    Purpose TEXT,
    Datee DATE,
    Amount DECIMAL(10, 2) NOT NULL
	);

	--create table lost or found animlas 
	CREATE TABLE lost_or_found_animals (
    L_ID INT identity(1,1) PRIMARY KEY,
    Namee VARCHAR(50),
    Descriptionn TEXT,
    L_Date DATE,
    Specie VARCHAR(50),
    Locationn VARCHAR(200),
    Investigator VARCHAR(100)
);

   --create table organization
  CREATE TABLE ORGANIZATION (
    O_ID INT identity(1,1) PRIMARY KEY,  
    O_Name VARCHAR(100) NOT NULL,
    Servicess TEXT NOT NULL,
    City VARCHAR(50),
    Addresss VARCHAR(200),
    Operating_hours VARCHAR(100),
     D_ID INT FOREIGN KEY REFERENCES Donation(D_ID)
);

    --create table person
   CREATE TABLE PERSON (
    Person_ID INT identity(1,1) PRIMARY KEY,
    F_Name VARCHAR(50) NOT NULL,
    L_Name VARCHAR(50) NOT NULL,
    U_Name VARCHAR(50) NOT NULL UNIQUE,
    Passwordd VARCHAR(50) NOT NULL,
	Adoption_Status VARCHAR(20) NOT NULL CHECK (Adoption_Status IN ('Interested', 'Adopter', 'Not Interested')),
	D_ID INT FOREIGN KEY REFERENCES Donation(D_ID),
	L_ID INT FOREIGN KEY REFERENCES lost_or_found_animals
 
);

      --create table pet
	CREATE TABLE PET (
    Pet_ID INT identity(1,1) PRIMARY KEY,
    Pet_name VARCHAR(50) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Age INT NOT NULL,
    Colour VARCHAR(50) NOT NULL,
    Size VARCHAR(20) NOT NULL,
	Specie VARCHAR(20) NOT NULL,
    Lifespan INT NOT NULL,
    Medical_History text NOT NULL,
    Adoption_Status VARCHAR(20) NOT NULL CHECK (Adoption_Status IN ('Available', 'Adopted', 'Pending')),
    Person_ID INT FOREIGN KEY REFERENCES PERSON(Person_ID),
	L_ID INT FOREIGN KEY REFERENCES lost_or_found_animals,
	O_ID INT FOREIGN KEY REFERENCES Organization(O_ID)
 
); 

      --insert into donation table
	INSERT INTO Donation VALUES
('John', 'Doe', 'General Support', '2024-01-01', 100.00),
('Jane', 'Smith', 'Adoption Program', '2024-01-05', 50.00),
('Robert', 'Jones', 'Medical Care', '2024-01-10', 25.00),
('Mary', 'Brown', 'Building Fund', '2024-01-15', 200.00),
('Michael', 'Davis', 'General Support', '2024-01-20', 75.00),
('Jennifer', 'Wilson', 'Adoption Program', '2024-01-25', 125.00),
('David', 'Garcia', 'Medical Care', '2024-02-01', 30.00),
('Linda', 'Rodriguez', 'Building Fund', '2024-02-05', 150.00),
('Christopher', 'Williams', 'General Support', '2024-02-10', 60.00),
('Angela', 'Garcia', 'Adoption Program', '2024-02-15', 100.00),
('Brian', 'Martinez', 'Medical Care', '2024-02-20', 40.00),
('Nicole', 'Robinson', 'Building Fund', '2024-02-25', 175.00),
('Kevin', 'Clark', 'General Support', '2024-03-01', 90.00),
('Michelle', 'Lopez', 'Adoption Program', '2024-03-05', 110.00),
('Timothy', 'Young', 'Medical Care', '2024-03-10', 20.00),
('Jessica', 'Hernandez', 'Building Fund', '2024-03-15', 220.00),
('Jason', 'Green', 'General Support', '2024-03-20', 80.00),
('Stephanie', 'Scott', 'Adoption Program', '2024-03-25', 130.00),
('Eric', 'Baker', 'Medical Care', '2024-04-01', 35.00),
('Kimberly', 'Hall', 'Building Fund', '2024-04-05', 160.00),
('Ryan', 'Carter', 'General Support', '2024-04-10', 70.00),
('Ashley', 'Nelson', 'Adoption Program', '2024-04-15', 105.00),
('Brandon', 'Murphy', 'Medical Care', '2024-04-20', 45.00),
('Amanda', 'Rivera', 'Building Fund', '2024-04-25', 180.00),
('Justin', 'Cooper', 'General Support', '2024-05-01', 95.00),
('Sarah', 'Reed', 'Adoption Program', '2024-05-05', 115.00),
('Jose', 'Perez', 'Medical Care', '2024-05-10', 22.00),
('Rachel', 'Howard', 'Building Fund', '2024-05-15', 230.00),
('Patrick', 'Ward', 'General Support', '2024-05-20', 85.00),
('Melissa', 'Torres', 'Adoption Program', '2024-05-25', 135.00);
     select * from Donation;

	--insert into lost or found animal table
   INSERT INTO lost_or_found_animals VALUES
('Fluffy', 'Small, white cat, blue eyes', '2024-01-01', 'Cat', 'Central Park', 'John Smith'),
('Buddy', 'Large, brown dog, collar', '2024-01-02', 'Dog', 'Downtown', 'Jane Doe'),
('Tweety', 'Yellow bird, broken wing', '2024-01-03', 'Bird', 'Residential Area', 'Robert Jones'),
('Whiskers', 'Gray cat, green eyes', '2024-01-04', 'Cat', 'Park', 'Mary Brown'),
('Max', 'Black dog, no collar', '2024-01-05', 'Dog', 'Shopping Mall', 'Michael Davis'),
('Coco', 'Brown cat, white paws', '2024-01-06', 'Cat', 'Apartment Complex', 'Jennifer Wilson'),
('Rocky', 'Spotted dog, red leash', '2024-01-07', 'Dog', 'School Area', 'David Garcia'),
('Daisy', 'White cat, long hair', '2024-01-08', 'Cat', 'Library', 'Linda Rodriguez'),
('Charlie', 'Golden retriever, friendly', '2024-01-09', 'Dog', 'Beach', 'Christopher Williams'),
('Sadie', 'Tabby cat, missing tail', '2024-01-10', 'Cat', 'Coffee Shop', 'Angela Garcia'),
('Oliver', 'German Shepherd, well-trained', '2024-01-11', 'Dog', 'Highway', 'Brian Martinez'),
('Luna', 'Siamese cat, vocal', '2024-01-12', 'Cat', 'Marketplace', 'Nicole Robinson'),
('Leo', 'Beagle, loves to sniff', '2024-01-13', 'Dog', 'Forest', 'Kevin Clark'),
('Lily', 'Persian cat, fluffy', '2024-01-14', 'Cat', 'Hospital', 'Michelle Lopez'),
('Jack', 'Poodle, curly hair', '2024-01-15', 'Dog', 'Stadium', 'Timothy Young'),
('Chloe', 'Calico cat, playful', '2024-01-16', 'Cat', 'Museum', 'Jessica Hernandez'),
('Toby', 'Labrador, energetic', '2024-01-17', 'Dog', 'Construction Site', 'Jason Green'),
('Sophie', 'Ragdoll cat, docile', '2024-01-18', 'Cat', 'University', 'Stephanie Scott'),
('Milo', 'Boxer, strong', '2024-01-19', 'Dog', 'Warehouse District', 'Eric Baker'),
('Mia', 'Maine Coon, large', '2024-01-20', 'Cat', 'Airport', 'Kimberly Hall'),
('Bear', 'Husky, thick fur', '2024-01-21', 'Dog', 'Mountain Area', 'Ryan Carter'),
('Ruby', 'Russian Blue, elegant', '2024-01-22', 'Cat', 'Subway Station', 'Ashley Nelson'),
('Duke', 'Rottweiler, protective', '2024-01-23', 'Dog', 'Industrial Zone', 'Brandon Murphy'),
('Penny', 'Sphynx cat, hairless', '2024-01-24', 'Cat', 'Shopping Center', 'Amanda Rivera'),
('Tucker', 'Terrier, feisty', '2024-01-25', 'Dog', 'Rural Area', 'Justin Cooper'),
('Cleo', 'Turkish Angora, graceful', '2024-01-26', 'Cat', 'Bridge', 'Sarah Reed'),
('Cooper', 'Chihuahua, small', '2024-01-27', 'Dog', 'Parking Lot', 'Jose Perez'),
('Stella', 'Scottish Fold, cute', '2024-01-28', 'Cat', 'Office Building', 'Rachel Howard'),
('Finn', 'Shih Tzu, long hair', '2024-01-29', 'Dog', 'Park', 'Patrick Ward'),
('Hazel', 'Himalayan cat, blue eyes', '2024-01-30', 'Cat', 'Residential Street', 'Melissa Torres');
  select * from lost_or_found_animals;

  --insert into organization table
    INSERT INTO ORGANIZATION VALUES
 ('Pet Rescue Center', 'Adoption, fostering, rescue', 'New York', '123 Main St', '9AM-5PM',1),
('Animal Shelter Inc', 'Adoption, shelter, care', 'Los Angeles', '456 Oak Ave', '10AM-6PM',2),
('Happy Paws', 'Adoption, rescue', 'Chicago', '789 Pine Ln', '11AM-7PM',3),
('Furry Friends', 'Adoption, fostering', 'Houston', '101 Elm St', '9AM-5PM',4),
('Best Friends Animal Society', 'Adoption, rescue, advocacy', 'Salt Lake City', '234 Canyon Rd', '8AM-8PM',5),
('The Humane Society', 'Adoption, rescue, education', 'Washington DC', '567 Mass Ave', '9AM-5PM',6),
('ASPCA', 'Adoption, rescue, protection', 'New York', '890 5th Ave', '10AM-6PM',7),
('PetSmart Charities', 'Adoption', 'Phoenix', '123 PetSmart Plaza', '9AM-9PM',8),
('Animal Care Centers of NYC', 'Adoption, shelter', 'New York', '11 W 31st St', '8AM-8PM',9),
('Austin Pets Alive!', 'Adoption, rescue', 'Austin', '1234 S Lamar Blvd', '10AM-7PM',10),
('Maddie''s Fund', 'Grant making, education', 'Pleasanton', '2088 Alameda Padre Serra', '9AM-5PM',11),
('Best Friends Lifesaving Center', 'Adoption, fostering', 'New York', '307 W 25th St', '10AM-7PM',12),
('The Anti-Cruelty Society', 'Adoption, rescue, clinic', 'Chicago', '510 N LaSalle Dr', '11AM-6PM',13),
('Dallas Animal Services', 'Adoption, shelter, rescue', 'Dallas', '1818 N Westmoreland Rd', '8AM-5PM',14),
('Maricopa County Animal Care and Control', 'Adoption, shelter', 'Phoenix', '2500 S 27th Ave', '10AM-6PM',15),
('San Diego Humane Society', 'Adoption, rescue, clinic', 'San Diego', '5500 Gaines St', '9AM-6PM',16),
('Los Angeles Animal Services', 'Adoption, shelter', 'Los Angeles', '221 N Figueroa St', '8AM-5PM',17),
('Broward County Animal Care and Adoption', 'Adoption, shelter', 'Fort Lauderdale', '2400 SW 42nd St', '10AM-6PM',18),
('Humane Society of Broward County', 'Adoption, rescue, clinic', 'Fort Lauderdale', '2050 Griffin Rd', '9AM-5PM',19),
('Miami-Dade Animal Services', 'Adoption, shelter', 'Miami', '7401 NW 74th St', '10AM-6PM',20),
('Orange County Animal Services', 'Adoption, shelter', 'Orlando', '2769 Conroy Rd', '10AM-6:30PM',21),
('Hillsborough County Pet Resource Center', 'Adoption, shelter', 'Tampa', '440 N Falkenburg Rd', '10AM-7PM',22),
('Jacksonville Animal Care and Protective Services', 'Adoption, shelter', 'Jacksonville', '2020 Forest St', '10AM-6PM',23),
('Atlanta Humane Society', 'Adoption, rescue, clinic', 'Atlanta', '981 Howell Mill Rd NW', '9AM-5PM',24),
('Charleston Animal Society', 'Adoption, rescue, clinic', 'North Charleston', '2455 Remount Rd', '10AM-6PM',25),
('Columbia Animal Services', 'Adoption, shelter', 'Columbia', '127 Humane Ln', '10AM-5PM',26),
('Greenville County Animal Care', 'Adoption, shelter', 'Greenville', '328 Furman Hall Rd', '10AM-6PM',27),
('Spartanburg Humane Society', 'Adoption, rescue, clinic', 'Spartanburg', '150 Dexter Rd', '10AM-5PM',28),
('Aiken County Animal Shelter', 'Adoption, shelter', 'Aiken', '333 Wire Rd', '10AM-5PM',29),
('Anderson County P.A.W.S.', 'Adoption, shelter', 'Anderson', '1320 Highway 29 South', '10AM-5:30PM',30);
   select * from ORGANIZATION;

   --insert into person table
   INSERT INTO PERSON VALUES
('John', 'Doe', 'johndoe1', 'password123', 'Adopter', 1, 1),
('Jane', 'Smith', 'janesmith2', 'pass456', 'Interested', 2, 2),
('Michael', 'Brown', 'michaelb3', 'pass789', 'Not Interested', 3, 3),
('Emily', 'Wilson', 'emilyw4', 'pass101', 'Adopter', 4, 4),
('David', 'Garcia', 'davidg5', 'pass202', 'Interested', 5, 5),
('Jessica', 'Rodriguez', 'jessicar6', 'pass303', 'Not Interested', 6, 6),
('Christopher', 'Williams', 'chrisw7', 'pass404', 'Adopter', 7, 7),
('Angela', 'Garcia', 'angelag8', 'pass505', 'Interested', 8, 8),
('Brian', 'Martinez', 'brianm9', 'pass606', 'Not Interested', 9, 9),
('Nicole', 'Robinson', 'nicoler10', 'pass707', 'Adopter', 10, 10),
('Kevin', 'Clark', 'kevinc11', 'pass808', 'Interested', 11, 11),
('Stephanie', 'Lopez', 'stephaniel12', 'pass909', 'Not Interested', 12, 12),
('Brandon', 'Young', 'brandony13', 'pass111', 'Adopter', 13, 13),
('Melissa', 'Allen', 'melissaa14', 'pass222', 'Interested', 14, 14),
('Tyler', 'Wright', 'tylerw15', 'pass333', 'Not Interested', 15, 15),
('Ashley', 'Green', 'ashleyg16', 'pass444', 'Adopter', 16, 16),
('Justin', 'Baker', 'justinb17', 'pass555', 'Interested', 17, 17),
('Sarah', 'Hall', 'sarahh18', 'pass666', 'Not Interested', 18, 18),
('Ryan', 'Carter', 'ryanc19', 'pass777', 'Adopter', 19, 19),
('Michelle', 'Perez', 'michellep20', 'pass888', 'Interested', 20, 20),
('Jason', 'Ramirez', 'jasonr21', 'pass999', 'Not Interested', 21, 21),
('Tiffany', 'James', 'tiffanyj22', 'pass121', 'Adopter', 22, 22),
('Adam', 'Flores', 'adamf23', 'pass232', 'Interested', 23, 23),
('Kimberly', 'Morris', 'kimberlym24', 'pass343', 'Not Interested', 24, 24),
('Eric', 'Murphy', 'ericm25', 'pass454', 'Adopter', 25, 25),
('Amanda', 'Rivera', 'amandar26', 'pass565', 'Interested', 26, 26),
('Jose', 'Cook', 'josec27', 'pass676', 'Not Interested', 27, 27),
('Brittany', 'Rogers', 'brittanyr28', 'pass787', 'Adopter', 28, 28),
('Patrick', 'Reed', 'patrickr29', 'pass898', 'Interested', 29, 29),
('Laura', 'Bailey', 'laurab30', 'pass909', 'Not Interested', 30, 30);
    select * from PERSON;

	--insert into pet table
     INSERT INTO PET  VALUES
('Buddy', 'Male', 2, 'Golden', 'Medium', 'Dog', 12, 'Vaccinated', 'Available', 1, 1, 1),
('Lucy', 'Female', 1, 'Black', 'Small', 'Cat', 15, 'Spayed', 'Adopted', 2, 2, 2),
('Max', 'Male', 3, 'Brown', 'Large', 'Dog', 10, 'Healthy', 'Available', 3, 3, 3),
('Daisy', 'Female', 4, 'White', 'Medium', 'Cat', 14, 'None', 'Pending', 4, 4, 4),
('Rocky', 'Male', 5, 'Grey', 'Large', 'Dog', 11, 'Arthritis', 'Available', 5, 5, 5),
('Coco', 'Female', 2, 'Calico', 'Small', 'Cat', 13, 'Vaccinated', 'Adopted', 6, 6, 6),
('Charlie', 'Male', 1, 'Black', 'Medium', 'Dog', 12, 'Healthy', 'Available', 7, 7, 7),
('Luna', 'Female', 3, 'Tabby', 'Medium', 'Cat', 14, 'Spayed', 'Pending', 8, 8, 8),
('Oliver', 'Male', 4, 'White', 'Large', 'Dog', 10, 'None', 'Available', 9, 9, 9),
('Cleo', 'Female', 5, 'Orange', 'Small', 'Cat', 15, 'Vaccinated', 'Adopted', 10, 10, 10),
('Leo', 'Male', 2, 'Brown', 'Medium', 'Dog', 11, 'Healthy', 'Available', 11, 11, 11),
('Mia', 'Female', 1, 'Grey', 'Small', 'Cat', 12, 'Spayed', 'Pending', 12, 12, 12),
('Jack', 'Male', 3, 'Golden', 'Large', 'Dog', 13, 'None', 'Available', 13, 13, 13),
('Lily', 'Female', 4, 'Black', 'Medium', 'Cat', 14, 'Vaccinated', 'Adopted', 14, 14, 14),
('Toby', 'Male', 5, 'White', 'Large', 'Dog', 10, 'Arthritis', 'Available', 15, 15, 15),
('Bella', 'Female', 2, 'Calico', 'Small', 'Cat', 15, 'Healthy', 'Pending', 16, 16, 16),
('Max', 'Male', 1, 'Brown', 'Medium', 'Dog', 12, 'Vaccinated', 'Available', 17, 17, 17),
('Ruby', 'Female', 3, 'Tabby', 'Medium', 'Cat', 13, 'Spayed', 'Adopted', 18, 18, 18),
('Charlie', 'Male', 4, 'Black', 'Large', 'Dog', 11, 'None', 'Available', 19, 19, 19),
('Zoe', 'Female', 5, 'Orange', 'Small', 'Cat', 14, 'Vaccinated', 'Pending', 20, 20, 20),
('Cooper', 'Male', 2, 'Golden', 'Medium', 'Dog', 12, 'Healthy', 'Available', 21, 21, 21),
('Penny', 'Female', 1, 'Black', 'Small', 'Cat', 15, 'Spayed', 'Adopted', 22, 22, 22),
('Tucker', 'Male', 3, 'Brown', 'Large', 'Dog', 10, 'None', 'Available', 23, 23, 23),
('Sadie', 'Female', 4, 'White', 'Medium', 'Cat', 14, 'Vaccinated', 'Pending', 24, 24, 24),
('Oliver', 'Male', 5, 'Grey', 'Large', 'Dog', 11, 'Arthritis', 'Available', 25, 25, 25),
('Lola', 'Female', 2, 'Calico', 'Small', 'Cat', 13, 'Healthy', 'Adopted', 26, 26, 26),
('Jack', 'Male', 1, 'Black', 'Medium', 'Dog', 12, 'Vaccinated', 'Available', 27, 27, 27),
('Sophie', 'Female', 3, 'Tabby', 'Medium', 'Cat', 14, 'Spayed', 'Pending', 28, 28, 28),
('Duke', 'Male', 4, 'White', 'Large', 'Dog', 10, 'None', 'Available', 29, 29, 29),
('Chloe', 'Female', 5, 'Orange', 'Small', 'Cat', 15, 'Vaccinated', 'Adopted', 30, 30, 30);

          select * from PET;
GO


-------------------------
--->    PROCEDURES
-------------------------

--Procedure to Retrieve Lost/Found Animals by Species
 CREATE PROCEDURE GetLostFoundBySpecies
    @Specie VARCHAR(50)
AS
BEGIN
    SELECT L_ID, Namee, Descriptionn, L_Date, Specie, Locationn, Investigator
    FROM lost_or_found_animals
    WHERE Specie = @Specie;
END;
GO
  exec GetLostFoundBySpecies @Specie='cat';

 -- Procedure to Search Organizations by City
 GO
CREATE PROCEDURE GetOrganizationsByCity
    @City VARCHAR(50)
AS
BEGIN
    SELECT O_Name, Servicess, Addresss, Operating_hours
    FROM ORGANIZATION
    WHERE City = @City;
END;
GO
  exec GetOrganizationsByCity @City='New York';

 
 --Procedure to Get Details of Pets by Organization
 GO
 CREATE PROCEDURE GetPetsByOrganization
    @O_ID INT
AS
BEGIN
    SELECT P.Pet_name, P.Gender, P.Age, P.Colour, P.Adoption_Status,
           O.O_Name, O.City
    FROM PET P
    JOIN ORGANIZATION O ON P.O_ID = O.O_ID
    WHERE P.O_ID = @O_ID;
END;
GO
  exec GetPetsByOrganization @O_ID = 3;

--procedure to count pets by adoption status
GO
  CREATE PROCEDURE GetPetCountByAdoptionStatus
AS
BEGIN
    SELECT Adoption_Status, COUNT(*) AS Total_Pets
    FROM PET
    GROUP BY Adoption_Status;
END;
GO

   exec GetPetCountByAdoptionStatus;

-------------------------
--->     VIEWS
-------------------------

--Create View for Donors and Their Donations:
GO
  CREATE VIEW Donor_Donations AS
SELECT 
    P.F_Name AS First_Name,
    P.L_Name AS Last_Name,
    D.Purpose AS Donation_Purpose,
    D.Datee AS Donation_Date,
    D.Amount AS Donation_Amount
FROM 
    Donation D
JOIN 
    PERSON P ON D.D_ID = P.D_ID;

GO

   select * from Donor_Donations;

-- Create View for People and Their Adopted Pets:
GO
 CREATE VIEW Person_Adopted_Pets AS
SELECT 
    P.F_Name AS First_Name,P.L_Name AS Last_Name,Pet.Pet_name AS Pet_Name,
	Pet.Specie AS Pet_Species,Pet.Adoption_Status AS Adoption_Status
FROM 
    PERSON P
JOIN 
    PET Pet ON P.Person_ID = Pet.Person_ID
WHERE 
    Pet.Adoption_Status = 'Adopted';

GO
  
  select * from Person_Adopted_Pets;

  --Pets with Their Medical History Details
  GO
 CREATE VIEW Pets_Medical_Details AS
SELECT
    Pet_name,Specie,Gender,Age,Colour,Size,Medical_History
FROM
    PET;
GO

  SELECT * FROM Pets_Medical_Details;


--Interested People, Pets, and Organizations

GO
 CREATE VIEW Interested_People_Pets_Organizations AS
SELECT
    per.F_Name AS Interested_Person_First_Name,per.L_Name AS Interested_Person_Last_Name,
	pet.Pet_name,pet.Specie,pet.Gender, pet.Age,org.O_Name AS Housing_Organization
FROM
    PERSON per
JOIN
    PET pet ON per.Person_ID = pet.Person_ID
JOIN
    ORGANIZATION org ON pet.O_ID = org.O_ID
WHERE
    per.Adoption_Status = 'Interested';
GO

 SELECT * FROM Interested_People_Pets_Organizations;


 -------------------------
--->    FUNCTIONS
-------------------------
GO
  CREATE FUNCTION GetOrganizationName (@OrganizationID INT)
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @OrgName VARCHAR(100);

    SELECT @OrgName = O_Name
    FROM ORGANIZATION
    WHERE O_ID = @OrganizationID;

    RETURN @OrgName;
END;
GO

   SELECT dbo.GetOrganizationName(5) AS Organization;



--Scalar Function: Get Donor’s Total Donation
GO
 CREATE FUNCTION fn_TotalDonation (@DonorID INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @TotalDonation DECIMAL(10, 2);
    SELECT @TotalDonation = SUM(Amount)
    FROM Donation
    WHERE D_ID = @DonorID;
    
    RETURN @TotalDonation;
END;
GO
   
    SELECT dbo.fn_TotalDonation(5) AS TotalDonation;

--Function to Get the Number of Pets by Species
GO
CREATE FUNCTION fn_CountPetsBySpecies (@Species VARCHAR(50))
RETURNS INT
AS
BEGIN
    DECLARE @Count INT;

    SELECT @Count = COUNT(*)
    FROM PET
    WHERE Specie = @Species;

    RETURN @Count;
END;
GO

  SELECT dbo.fn_CountPetsBySpecies('Dog') AS TotalDogs;

--Table-Valued Function: Get Pets by Adoption Status
GO
CREATE FUNCTION fn_GetPetsByAdoptionStatus (@Status VARCHAR(20))
RETURNS TABLE
AS
RETURN
(
    SELECT Pet_ID, Pet_name, Gender, Age, Specie, Adoption_Status
    FROM PET
    WHERE Adoption_Status = @Status
);
GO

  SELECT * FROM dbo.fn_GetPetsByAdoptionStatus('Available');

   -------------------------
--->    TRIGGERS
-------------------------

 -- 1.DONATION TABLE TRIGGERS
 --INSERT Trigger high-value donations
 GO
 CREATE TRIGGER trg_Donation_HighValue_Insert
ON Donation
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE Amount > 200)
    BEGIN
        PRINT 'High-value donation recorded.';
    END
END;

-- Trigger after updating a donation
--UPDATE Trigger – Prevent reducing donation amount
GO
CREATE TRIGGER trg_Donation_Prevent_Amount_Decrease
ON Donation
AFTER UPDATE
AS
BEGIN
    IF EXISTS ( SELECT 1 FROM inserted i
        JOIN deleted d ON i.D_ID = d.D_ID
        WHERE i.Amount < d.Amount
 )
    BEGIN
        RAISERROR ('Donation amount cannot be reduced after entry.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;


-- Trigger after deleting a donation
GO
CREATE TRIGGER trg_PET_Delete
ON PET
AFTER DELETE
AS
BEGIN
    PRINT 'Pet has been deleted from the system.'
    
END;

-- 2. lost_or_found_animals TABLE TRIGGERS
---- Trigger after inserting a new lost/found animal record
GO
CREATE TRIGGER TR_LostFoundAnimals_Insert
ON lost_or_found_animals
AFTER INSERT
AS
BEGIN
    PRINT 'New record inserted into the lost_or_found_animals table.';
END;
GO

-- Trigger after updating a lost/found animal record
GO
CREATE TRIGGER TR_LostFound_AfterUpdate
ON lost_or_found_animals
AFTER UPDATE
AS
BEGIN
    DECLARE @L_ID INT, @OldLocation VARCHAR(200), @NewLocation VARCHAR(200);
    SELECT @L_ID = L_ID, @OldLocation = Locationn FROM deleted;
    SELECT @NewLocation = Locationn FROM inserted;
    IF @OldLocation != @NewLocation
    BEGIN
        PRINT 'Location for animal (ID: ' + CAST(@L_ID AS VARCHAR(10)) + ') changed from ' + @OldLocation + ' to ' + @NewLocation;
    END
END;
GO

-- Trigger after deleting a lost/found animal record
GO
CREATE TRIGGER TR_LostFound_AfterDelete
ON lost_or_found_animals
AFTER DELETE
AS
BEGIN
    DECLARE @L_ID INT, @Namee VARCHAR(50), @Specie VARCHAR(50);
    SELECT @L_ID = L_ID, @Namee = Namee, @Specie = Specie FROM deleted;
    PRINT @Specie + ' named ' + @Namee + ' (ID: ' + CAST(@L_ID AS VARCHAR(10)) + ') record deleted';
END;
GO

-- 3. ORGANIZATION TABLE TRIGGERS
--  INSERT Trigger – Prevent duplicates by name & city
GO
 CREATE TRIGGER trg_Org_UniqueNameCity
ON ORGANIZATION
AFTER INSERT
AS
BEGIN
    IF EXISTS ( SELECT 1 FROM inserted i
        JOIN ORGANIZATION o
        ON i.O_Name = o.O_Name AND i.City = o.City AND i.O_ID <> o.O_ID
    )
    BEGIN
        RAISERROR('An organization with the same name already exists in this city.', 16, 1);
        ROLLBACK;
    END
END;
GO
-- Trigger for UPDATE operations on the ORGANIZATION table
GO
CREATE TRIGGER TR_Organization_Update
ON ORGANIZATION
AFTER UPDATE
AS
BEGIN
    PRINT 'An organization record in the ORGANIZATION table has been updated.';
END;
GO

-- Trigger after deleting an organization
GO
CREATE TRIGGER TR_Organization_AfterDelete
ON ORGANIZATION
AFTER DELETE
AS
BEGIN
    DECLARE @O_ID INT, @O_Name VARCHAR(100), @City VARCHAR(50);
    SELECT @O_ID = O_ID, @O_Name = O_Name, @City = City FROM deleted;
    PRINT 'Organization ' + @O_Name + ' in ' + @City + ' (ID: ' + CAST(@O_ID AS VARCHAR(10)) + ') deleted';
END;
GO

--4.  PERSON TABLE TRIGGERS
-- Trigger after inserting a new person
GO
CREATE TRIGGER TR_Person_AfterInsert
ON PERSON
AFTER INSERT
AS
BEGIN
    DECLARE @Person_ID INT, @F_Name VARCHAR(50), @L_Name VARCHAR(50), @U_Name VARCHAR(50);
    SELECT @Person_ID = Person_ID, @F_Name = F_Name, @L_Name = L_Name, @U_Name = U_Name FROM inserted;
    PRINT 'New person ' + @F_Name + ' ' + @L_Name + ' added with username ' + @U_Name + ' (ID: ' + CAST(@Person_ID AS VARCHAR(10)) + ')';
END;
GO

-- Trigger after updating a person's information
GO
CREATE TRIGGER TR_Person_AfterUpdate
ON PERSON
AFTER UPDATE
AS
BEGIN
    DECLARE @Person_ID INT, @OldStatus VARCHAR(20), @NewStatus VARCHAR(20);
    SELECT @Person_ID = Person_ID, @OldStatus = Adoption_Status FROM deleted;
    SELECT @NewStatus = Adoption_Status FROM inserted;
    IF @OldStatus != @NewStatus
    BEGIN
        PRINT 'Adoption status for person (ID: ' + CAST(@Person_ID AS VARCHAR(10)) + ') changed from ' + @OldStatus + ' to ' + @NewStatus;
    END
END;
GO


-- DELETE Trigger – Block deletion of adopters
GO
CREATE TRIGGER trg_Person_BlockDelete_Adopters
ON PERSON
INSTEAD OF DELETE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM deleted WHERE Adoption_Status = 'Adopter')
    BEGIN
        RAISERROR('Adopters cannot be deleted from the system.', 16, 1);
    END
    ELSE
    BEGIN
        DELETE FROM PERSON WHERE Person_ID IN (5);
    END
END;

--5.  PET TABLE TRIGGERS
-- INSERT Trigger – Validate age
GO
CREATE TRIGGER trg_Pet_AgeCheck
ON PET
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE Age <= 0 OR Age > 30)
    BEGIN
        RAISERROR('Pet age must be between 1 and 30 years.', 16, 1);
        ROLLBACK;
    END
END;
GO

-- Trigger after updating a pet's information
GO
CREATE TRIGGER TR_Pet_AfterUpdate
ON PET
AFTER UPDATE
AS
BEGIN
    DECLARE @Pet_ID INT, @OldStatus VARCHAR(20), @NewStatus VARCHAR(20);
    SELECT @Pet_ID = Pet_ID, @OldStatus = Adoption_Status FROM deleted;
    SELECT @NewStatus = Adoption_Status FROM inserted;
    IF @OldStatus != @NewStatus
    BEGIN
        PRINT 'Adoption status for pet (ID: ' + CAST(@Pet_ID AS VARCHAR(10)) + ') changed from ' + @OldStatus + ' to ' + @NewStatus;
    END
END;
GO

-- Trigger after deleting a pet
GO
CREATE TRIGGER TR_Pet_AfterDelete
ON PET
AFTER DELETE
AS
BEGIN
    DECLARE @Pet_ID INT, @Pet_name VARCHAR(50), @Specie VARCHAR(20);
    SELECT @Pet_ID = Pet_ID, @Pet_name = Pet_name, @Specie = Specie FROM deleted;
    PRINT @Specie + ' ' + @Pet_name + ' (ID: ' + CAST(@Pet_ID AS VARCHAR(10)) + ') deleted';
END;
GO
 
 --DML COMMANDS
 --truncate
 TRUNCATE TABLE lost_or_found_animals;
-- This will remove all records from the lost_or_found_animals table, but the table structure remain

--update
UPDATE PERSON
SET Adoption_Status = 'Adopter'
WHERE Person_ID = 5;
-- This will change the Adoption_Status to 'Adopter' for the person with Person_ID 5.


--delete
DELETE FROM PET
WHERE Pet_ID = 10;
-- This will delete the row for the pet with Pet_ID 10.

