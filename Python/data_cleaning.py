# =====================================================
# Banking Customer & Loan Analytics
# Data Cleaning
# =====================================================

# Import libraries
import pandas as pd

# Load dataset
df = pd.read_csv("../Dataset/bank_loan_data.csv")

# Display first 5 rows
print("\nFirst 5 Rows:")
print(df.head())

# Display last 5 rows
print("\nLast 5 Rows:")
print(df.tail())

# Display number of rows and columns
print("\nDataset Shape:")
print(df.shape)

# Display column names
print("\nColumn Names:")
print(df.columns)

# Display data types
print("\nData Types:")
print(df.dtypes)

# Check missing values
print("\nMissing Values:")
print(df.isnull().sum())

# Check duplicate records
print("\nDuplicate Records:")
print(df.duplicated().sum())

# Summary statistics
print("\nSummary Statistics:")
print(df.describe())

print("\nData Cleaning Completed Successfully!")