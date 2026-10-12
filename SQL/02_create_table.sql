USE Banking_Customer_Loan_Analytics;

CREATE TABLE bank_loan_data (
    Customer_ID VARCHAR(20) PRIMARY KEY,
    Age INT,
    Gender VARCHAR(10),
    Region VARCHAR(20),
    Income DECIMAL(10,2),
    Credit_Score INT,
    Loan_Amount DECIMAL(12,2),
    Loan_Term INT,
    Loan_Type VARCHAR(30),
    Loan_Status VARCHAR(20),
    Default_Status VARCHAR(10),
    Account_Balance DECIMAL(12,2),
    Employment_Status VARCHAR(30),
    Application_Date DATE
);

SHOW TABLES;