# =====================================================
# Banking Customer & Loan Analytics
# Business Insights
# =====================================================

import pandas as pd

# Load Dataset
df = pd.read_csv("../Dataset/bank_loan_data.csv")

print("=" * 50)
print("BANKING CUSTOMER & LOAN ANALYTICS")
print("=" * 50)

# =====================================================
# Insight 1
# =====================================================
print("\n1. Total Customers")
print(len(df))

# =====================================================
# Insight 2
# =====================================================
print("\n2. Loan Status")
print(df["Loan_Status"].value_counts())

# =====================================================
# Insight 3
# =====================================================
print("\n3. Region with Highest Customers")
print(df["Region"].value_counts())

# =====================================================
# Insight 4
# =====================================================
print("\n4. Average Loan Amount")
print(round(df["Loan_Amount"].mean(), 2))

# =====================================================
# Insight 5
# =====================================================
print("\n5. Highest Loan Amount")
print(df["Loan_Amount"].max())

# =====================================================
# Insight 6
# =====================================================
print("\n6. Average Credit Score")
print(round(df["Credit_Score"].mean(), 2))

# =====================================================
# Insight 7
# =====================================================
print("\n7. Default Status")
print(df["Default_Status"].value_counts())

# =====================================================
# Insight 8
# =====================================================
print("\n8. Employment Status")
print(df["Employment_Status"].value_counts())

# =====================================================
# Insight 9
# =====================================================
print("\n9. Average Income")
print(round(df["Income"].mean(), 2))

# =====================================================
# Insight 10
# =====================================================
print("\n10. Loan Type Distribution")
print(df["Loan_Type"].value_counts())

print("\nBusiness Insights Generated Successfully!")