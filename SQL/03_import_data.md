# Import CSV into MySQL

## Database
Banking_Customer_Loan_Analytics

## Table
bank_loan_data

## Steps

1. Open MySQL Workbench.
2. Expand the database.
3. Right-click the `bank_loan_data` table.
4. Select **Table Data Import Wizard**.
5. Choose `bank_loan_data.csv`.
6. Verify all columns are mapped correctly.
7. Click **Next** and then **Finish**.
8. Verify the import:

```sql
SELECT COUNT(*) FROM bank_loan_data;
```

Expected Result:

```
500
```