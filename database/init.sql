USE atm;

CREATE TABLE IF NOT EXISTS users (
                                     ID INT PRIMARY KEY,
                                     FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate VARCHAR(20),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    PINCode INT,
    Balance DOUBLE
    );

CREATE TABLE IF NOT EXISTS transactions (
                                            ID INT PRIMARY KEY,
                                            Amount DOUBLE,
                                            DateTime VARCHAR(50),
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES users(ID)
    );
