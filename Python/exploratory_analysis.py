# =====================================================
# Banking Customer & Loan Analytics
# Exploratory Data Analysis (EDA)
# =====================================================

import pandas as pd
import matplotlib.pyplot as plt

# Load dataset
df = pd.read_csv("../Dataset/bank_loan_data.csv")

# -----------------------------
# Total Customers
# -----------------------------
print("Total Customers:", len(df))

# -----------------------------
# Average Loan Amount
# -----------------------------
print("Average Loan Amount:", round(df["Loan_Amount"].mean(), 2))

# -----------------------------
# Average Income
# -----------------------------
print("Average Income:", round(df["Income"].mean(), 2))

# -----------------------------
# Average Credit Score
# -----------------------------
print("Average Credit Score:", round(df["Credit_Score"].mean(), 2))

# =====================================================
# Chart 1: Loan Status
# =====================================================

loan_status = df["Loan_Status"].value_counts()

plt.figure(figsize=(6,4))
loan_status.plot(kind="bar")
plt.title("Loan Status Distribution")
plt.xlabel("Loan Status")
plt.ylabel("Number of Customers")
plt.tight_layout()
plt.show()

# =====================================================
# Chart 2: Customers by Region
# =====================================================

region = df["Region"].value_counts()

plt.figure(figsize=(6,4))
region.plot(kind="bar")
plt.title("Customers by Region")
plt.xlabel("Region")
plt.ylabel("Customers")
plt.tight_layout()
plt.show()

# =====================================================
# Chart 3: Loan Amount Distribution
# =====================================================

plt.figure(figsize=(6,4))
plt.hist(df["Loan_Amount"], bins=10)
plt.title("Loan Amount Distribution")
plt.xlabel("Loan Amount")
plt.ylabel("Frequency")
plt.tight_layout()
plt.show()

print("\nEDA Completed Successfully!")