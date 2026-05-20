# 🏨 Hotel Booking Analysis: Customer Retention & Dynamic Pricing Intelligence

## 📌 Project Overview

The travel, tourism, and hospitality industry faces major revenue losses due to:

* High booking cancellation rates
* Unoptimized room pricing
* Seasonal demand fluctuations
* Inefficient customer retention strategies

This project analyzes hotel booking data to uncover:

* Why customers cancel reservations
* Which customer segments are high-risk
* How pricing changes across seasons
* Which booking channels contribute most to cancellations

The project combines:

* Exploratory Data Analysis (EDA)
* SQL business analysis
* Machine Learning churn prediction
* Interactive Power BI dashboarding

The final solution provides business insights that can help hotel management teams:

* Improve Revenue Per Available Room (RevPAR)
* Reduce cancellation rates
* Optimize pricing strategies
* Design targeted retention campaigns

---

# 🎯 Business Objectives

The primary goals of this project are:

## 1. Reduce Booking Cancellations

Identify the factors most strongly associated with customer churn.

## 2. Improve Dynamic Pricing Strategy

Analyze seasonal pricing behavior and demand trends.

## 3. Increase Revenue Optimization

Estimate revenue loss caused by cancellations and identify profitable customer segments.

## 4. Enable Data-Driven Decision Making

Provide interactive dashboards and predictive insights for hotel revenue managers.

---

# 📂 Dataset Information

## Dataset Used

Hotel Booking Demand Dataset

The dataset contains historical booking records for:

* Resort Hotels
* City Hotels

## Key Features

| Feature                   | Description                   |
| ------------------------- | ----------------------------- |
| hotel                     | Hotel type                    |
| is_canceled               | Booking cancellation status   |
| lead_time                 | Number of days before arrival |
| adr                       | Average Daily Rate            |
| arrival_date_month        | Booking month                 |
| market_segment            | Booking channel               |
| customer_type             | Customer category             |
| deposit_type              | Deposit payment type          |
| country                   | Customer country              |
| previous_cancellations    | Previous cancellation history |
| total_of_special_requests | Number of special requests    |

---

# 🛠️ Technologies Used

| Technology       | Purpose                          |
| ---------------- | -------------------------------- |
| Python           | Data analysis & machine learning |
| Pandas           | Data cleaning & transformation   |
| NumPy            | Numerical computation            |
| Matplotlib       | Data visualization               |
| Seaborn          | Statistical visualization        |
| Scikit-Learn     | Machine learning modeling        |
| PostgreSQL       | SQL business analysis            |
| Power BI         | Interactive dashboard creation   |
| Jupyter Notebook | EDA & ML workflow                |

---

# 🧹 Data Cleaning & Preprocessing

The dataset underwent extensive preprocessing before analysis.

## Cleaning Tasks Performed

* Removed duplicate records
* Handled missing values
* Treated ADR outliers
* Converted categorical fields
* Created engineered features

## Feature Engineering

### Total Stay Duration

Created a new feature:

```python
Total Nights = stays_in_week_nights + stays_in_weekend_nights
```

### Revenue Estimation

```python
Revenue = adr * total_nights
```

### Guest Count

```python
Total Guests = adults + children + babies
```

---

# 📊 Exploratory Data Analysis (EDA)

EDA was conducted to identify trends, patterns, and customer behaviors.

## Key Analyses Performed

### 📈 Revenue Trend Analysis

* Monthly revenue fluctuations
* Seasonal demand peaks
* Dynamic pricing trends

### ❌ Cancellation Analysis

* Cancellation rate by customer type
* Impact of lead time on cancellations
* Deposit type vs cancellation behavior

### 🌍 Geographic Analysis

* Country-wise booking trends
* High cancellation regions

### 🏨 Market Segment Analysis

* Online TA vs Offline TA behavior
* Booking volume comparison
* Channel-wise cancellation risk

### 💰 ADR Analysis

* Monthly ADR variation
* Pricing seasonality
* Revenue optimization trends

---

# 🧠 Machine Learning Model

## Objective

Predict whether a booking will be canceled.

## Target Variable

```python
is_canceled
```

---

# ⚙️ ML Workflow

## Steps Performed

1. Data encoding
2. Train-test split
3. Feature scaling
4. Logistic Regression model training
5. Model evaluation

---

# 📌 Model Used

## Logistic Regression

Chosen because:

* Simple and interpretable
* Good baseline classification model
* Useful for feature importance analysis

---

# 📊 Model Performance

| Metric        | Score |
| ------------- | ----- |
| Accuracy      | 77.8% |
| ROC-AUC Score | 0.668 |

---

# 🔥 Top Positive Cancellation Drivers

| Feature                  | Impact                                |
| ------------------------ | ------------------------------------- |
| country_PRT              | High positive correlation             |
| market_segment_Online TA | High cancellation tendency            |
| customer_type_Transient  | Increased cancellation probability    |
| previous_cancellations   | Strong churn indicator                |
| deposit_type_Non Refund  | Significant cancellation relationship |

---

# ✅ Top Negative Cancellation Drivers

| Feature                      | Impact                        |
| ---------------------------- | ----------------------------- |
| required_car_parking_spaces  | Lower cancellation likelihood |
| market_segment_Offline TA/TO | More stable bookings          |
| total_of_special_requests    | Higher booking commitment     |
| country_GBR                  | Lower cancellation tendency   |
| country_DEU                  | Lower cancellation tendency   |

---

# 🗄️ SQL Business Analysis

The cleaned dataset was imported into PostgreSQL for advanced SQL-based analysis.

## SQL Analyses Performed

### Revenue Analysis

* Total revenue generation
* Revenue by hotel type
* Revenue by month

### Cancellation Analysis

* High-risk customer segments
* Deposit type cancellation behavior
* Country-wise cancellations

### Customer Segmentation

* Corporate vs leisure travelers
* Repeat guests analysis
* Market segment comparison

### Seasonal Analysis

* Peak booking months
* Demand fluctuations
* ADR variation across seasons

---

# 📊 Power BI Dashboard

An interactive business dashboard was developed in Power BI.

## Dashboard Features

### KPI Cards

* Total Revenue
* Cancellation Rate
* Revenue Loss
* Average ADR

### Interactive Filters

* Month slicer
* Hotel type slicer

### Visualizations

* Revenue trend analysis
* Cancellation by customer type
* ADR trend by month
* Market segment analysis
* Deposit type impact

---

# 📌 Key Business Insights

## 1. Online TA Customers Are High Risk

Bookings through Online Travel Agencies exhibit higher cancellation rates.

## 2. Long Lead Time Increases Churn

Customers booking far in advance are more likely to cancel.

## 3. Seasonal Pricing Opportunities Exist

ADR significantly increases during high-demand periods.

## 4. Special Requests Indicate Stronger Commitment

Customers making special requests are less likely to cancel.

## 5. Non-Refundable Deposits Reduce Revenue Risk

Deposit policies influence cancellation behavior significantly.

---

# 🚀 Strategic Recommendations

## Revenue Optimization

* Implement dynamic pricing during peak seasons
* Increase ADR strategically during high-demand periods

## Cancellation Reduction

* Apply stricter deposit policies for risky segments
* Target high-risk customers with retention campaigns

## Marketing Strategy

* Offer loyalty benefits to repeat guests
* Personalize offers for transient customers

## Operational Improvements

* Forecast demand using ML predictions
* Improve booking stability through segmentation strategies

---

# 📈 Future Improvements

Potential future enhancements include:

* Advanced ML models (XGBoost, Random Forest)
* Real-time dynamic pricing engine
* Time-series forecasting
* Customer lifetime value prediction
* Deep learning churn prediction
* Automated retention recommendation system

---

# 📂 Project Structure

```text
hotel-booking-analysis/
│
├── data/
├── notebooks/
├── sql/
├── dashboard/
├── images/
├── README.md
└── requirements.txt
```

---

# ▶️ How to Run the Project

## 1. Clone Repository

```bash
git clone <repository-link>
```

## 2. Install Dependencies

```bash
pip install -r requirements.txt
```

## 3. Run Jupyter Notebook

```bash
jupyter notebook
```

## 4. Open Power BI Dashboard

Import the cleaned dataset into Power BI and load the dashboard file.

---

# 📷 Dashboard Preview

(Add Power BI dashboard screenshots here)

---

# 👨‍💻 Author

Developed as part of a Travel, Tourism & Hospitality analytics project focused on customer retention and dynamic pricing optimization.

---

# ⭐ Conclusion

This project successfully demonstrates how data analytics, SQL, machine learning, and business intelligence tools can be combined to solve real-world hospitality industry challenges.

The analysis uncovered critical cancellation drivers, seasonal pricing opportunities, and customer behavior patterns that can help hotel businesses improve profitability and operational efficiency.
