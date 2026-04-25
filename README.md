# 🛒 End-to-End Retail Data Analytics Project

## 📌 Project Overview
An end-to-end data analytics project analyzing retail sales data using Python, MySQL, and data visualization libraries.

## 🛠️ Tools & Technologies
- **Python** → Data cleaning, analysis & visualization
- **MySQL** → Data storage & SQL analysis
- **Pandas** → Data manipulation
- **Matplotlib & Seaborn** → Data visualization
- **SQLAlchemy** → Python-MySQL connection

## 📊 Dataset
- **Source:** Kaggle Retail Dataset
- **Size:** 9,994 orders
- **Period:** 2022 - 2023
- **Columns:** 16 original + 5 calculated

## 🔑 Key Findings

### 💰 Overall Performance
- Total Orders: 9,994
- Total Revenue: $11,079,328
- Total Profit: $1,039,928
- Avg Profit Margin: 5.3%

### 🏆 Top Performers
- Best Region: West ($3.4M revenue)
- Best State: California ($197K profit)
- Best Margin State: New York (5.83%)

### ⚠️ Key Issues
- 17 sub-categories are unprofitable
- Paper & Binders losing most money
- June & July consistently weak months
- Over-discounting is main cause of losses

### 📈 Monthly Trends
- Best Month: February 2023 ($731K)
- Worst Month: June 2023 ($328K)
- October consistently strong both years

## 💡 Business Recommendations
1. Reduce discounts on Paper & Binders
2. Investigate Central region low margins
3. Run promotions in June & July to boost sales
4. Focus on California & New York markets
5. Review discount policy across all categories

## 🚀 How to Run
1. Clone the repository
2. Create virtual environment: `python3 -m venv venv`
3. Activate: `source venv/bin/activate`
4. Install packages: `pip install -r requirements.txt`
5. Run notebook: `notebooks/01_data_exploration.ipynb`