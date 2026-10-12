USE Banking_Customer_Loan_Analytics;

-- =====================================================
-- Query 1: Total Customers
-- =====================================================

SELECT COUNT(*) AS Total_Customers
FROM bank_loan_data;

-- =====================================================
-- Query 2: Total Loan Amount
-- =====================================================

SELECT SUM(Loan_Amount) AS Total_Loan_Amount;


-- =====================================================
-- Query 3: Average Loan Amount
-- =====================================================

SELECT AVG(Loan_Amount) AS Average_Loan_Amount
FROM bank_loan_data
FROM bank_loan_data;


-- =====================================================
-- Query 4: Loan Status Count
-- =====================================================

SELECT Loan_Status,
       COUNT(*) AS Total_Customers
FROM bank_loan_data
GROUP BY Loan_Status;

-- =====================================================
-- Query 5: Loan Approval Rate
-- =====================================================

SELECT
    ROUND(
        (COUNT(CASE WHEN Loan_Status = 'Approved' THEN 1 END) * 100.0) / COUNT(*),
        2
    ) AS Approval_Rate_Percentage
FROM bank_loan_data;


-- =====================================================
-- Query 6: Region-wise Customer Count
-- =====================================================

SELECT
    Region,
    COUNT(*) AS Total_Customers
FROM bank_loan_data
GROUP BY Region
ORDER BY Total_Customers DESC;


-- =====================================================
-- Query 7: Gender-wise Customer Count
-- =====================================================

SELECT
    Gender,
    COUNT(*) AS Total_Customers
FROM bank_loan_data
GROUP BY Gender;


-- =====================================================
-- Query 8: Average Credit Score
-- =====================================================

SELECT
    ROUND(AVG(Credit_Score),2) AS Average_Credit_Score
FROM bank_loan_data;

-- =====================================================
-- Query 9: Loan Type Analysis
-- =====================================================

SELECT
    Loan_Type,
    COUNT(*) AS Total_Loans
FROM bank_loan_data
GROUP BY Loan_Type
ORDER BY Total_Loans DESC;


-- =====================================================
-- Query 10: Top 10 Customers by Loan Amount
-- =====================================================

SELECT
    Customer_ID,
    Loan_Amount
FROM bank_loan_data
ORDER BY Loan_Amount DESC
LIMIT 10;


-- =====================================================
-- Query 11: Employment Status Analysis
-- =====================================================

SELECT
    Employment_Status,
    COUNT(*) AS Total_Customers
FROM bank_loan_data
GROUP BY Employment_Status
ORDER BY Total_Customers DESC;


-- =====================================================
-- Query 12: Default Status Analysis
-- =====================================================

SELECT
    Default_Status,
    COUNT(*) AS Total_Customers
FROM bank_loan_data
GROUP BY Default_Status;


-- =====================================================
-- Query 13: Top 10 Customers by Income
-- =====================================================

SELECT
    Customer_ID,
    Income
FROM bank_loan_data
ORDER BY Income DESC
LIMIT 10;

-- =====================================================
-- Query 14: Region-wise Total Loan Amount
-- =====================================================

SELECT
    Region,
    SUM(Loan_Amount) AS Total_Loan_Amount
FROM bank_loan_data
GROUP BY Region
ORDER BY Total_Loan_Amount DESC;

-- =====================================================
-- Query 15: Average Income by Region
-- =====================================================

SELECT
    Region,
    ROUND(AVG(Income), 2) AS Average_Income
FROM bank_loan_data
GROUP BY Region
ORDER BY Average_Income DESC;

-- =====================================================
-- Query 16: Customers with Credit Score Above 750
-- =====================================================

SELECT
    Customer_ID,
    Credit_Score
FROM bank_loan_data
WHERE Credit_Score > 750
ORDER BY Credit_Score DESC;

-- =====================================================
-- Query 17: Loan Amount by Loan Type
-- =====================================================

SELECT
    Loan_Type,
    SUM(Loan_Amount) AS Total_Loan_Amount
FROM bank_loan_data
GROUP BY Loan_Type
ORDER BY Total_Loan_Amount DESC;

-- =====================================================
-- Query 18: Monthly Loan Applications
-- =====================================================

SELECT
    MONTH(Application_Date) AS Month,
    COUNT(*) AS Total_Applications
FROM bank_loan_data
GROUP BY MONTH(Application_Date)
ORDER BY Month;

-- =====================================================
-- Query 19: Average Account Balance by Employment Status
-- =====================================================

SELECT
    Employment_Status,
    ROUND(AVG(Account_Balance), 2) AS Average_Account_Balance
FROM bank_loan_data
GROUP BY Employment_Status
ORDER BY Average_Account_Balance DESC;

-- =====================================================
-- Query 20: Default Customers by Region
-- =====================================================

SELECT
    Region,
    COUNT(*) AS Default_Customers
FROM bank_loan_data
WHERE Default_Status = 'Yes'
GROUP BY Region
ORDER BY Default_Customers DESC;

