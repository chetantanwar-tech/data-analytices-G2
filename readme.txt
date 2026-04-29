
# 📊 Sales Data Analysis Report

---

## 🔹 1. Objective

The objective of this project is to analyze sales data to identify key business insights related to:

* Product performance
* Regional trends
* Customer segments
* Delivery efficiency

---

## 🔹 2. Dataset Overview

The dataset includes the following information:

* 📦 Orders and shipping dates
* 👥 Customer segments
* 🛍️ Product categories and sub-categories
* 💰 Sales performance
* 🌍 Regional distribution

This data helps in understanding overall sales patterns and business performance.

---

## 🔹 3. Data Cleaning & Preparation

The dataset was cleaned and prepared using the following steps:

* Loaded dataset using **pandas**
* Standardized column names (lowercase, underscores)
* Handled missing values (removed/ignored postal code where required)
* Converted date fields:

  * `order_date`
  * `ship_date`
* Removed duplicate records

---

## 🔹 4. Feature Engineering

New features were created to improve analysis quality:

* 📅 **Year & Month** extracted from order date
* 📆 **Day of week** derived for order trend analysis
* 🚚 **Shipping duration** calculated as:

  * `ship_date - order_date`

---

## 🔹 5. Exploratory Data Analysis (EDA)

### 📊 Category Analysis

* Certain product categories contribute significantly to total sales
* Indicates strong demand concentration in specific categories

---

### 🌍 Region Analysis

* Sales vary noticeably across regions
* Some regions contribute a higher share of revenue, indicating stronger market presence

---

### 📈 Time-Based Trends

* Sales fluctuate across months and years
* Peaks in specific months suggest **seasonal demand patterns**

---

### 🛍️ Product Analysis

* Certain sub-categories generate significantly higher sales
* These act as **key revenue drivers**

---

### 👥 Customer Segment Analysis

* The **Consumer segment** contributes the highest share of sales
* Indicates individual customers are the primary revenue source

---

### 🚚 Shipping Performance Analysis

* Average shipping time: **~4 days**
* Performance is generally consistent across regions
* Observations:

  * Central region: slightly higher shipping time (minor inefficiency)
  * East region: fastest delivery performance

---

## 🔹 6. Key Insights

* High-performing product categories drive most of the revenue
* Certain regions dominate overall sales performance
* Clear seasonal patterns exist in sales trends
* Consumer segment is the most valuable customer group
* Shipping operations are stable with minor regional variation

---

## 🔹 7. Business Recommendations

* 🎯 Focus marketing on high-performing product categories
* 🌍 Improve sales strategies in underperforming regions
* 🚚 Optimize logistics in the Central region
* 👥 Target Consumer segment with personalized campaigns
* 📅 Use seasonal trends for promotional planning

---