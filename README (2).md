<div align="center">

# 🛍️ Omnichannel Retail Sales & Inventory Analytics Dashboard

### *Bridging Offline and Online Retail — One Data-Driven Insight at a Time*

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-SQL%20Analytics-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-150458?style=for-the-badge&logo=pandas&logoColor=white)](https://pandas.pydata.org/)
[![Seaborn](https://img.shields.io/badge/Seaborn-Visualization-4C72B0?style=for-the-badge)](https://seaborn.pydata.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)
[![Stars](https://img.shields.io/github/stars/yourusername/omnichannel-retail-analytics?style=for-the-badge)](https://github.com/yourusername/omnichannel-retail-analytics/stargazers)
[![Forks](https://img.shields.io/github/forks/yourusername/omnichannel-retail-analytics?style=for-the-badge)](https://github.com/yourusername/omnichannel-retail-analytics/network)

</div>

---

> **A comprehensive end-to-end analytics project** that transforms raw retail transaction data into actionable business intelligence — covering sales performance, channel comparison, inventory insights, customer behavior, and regional market analysis, all visualized through an interactive Power BI dashboard.

---

## 📌 Table of Contents

- [Project Overview](#-project-overview)
- [Business Problem](#-business-problem)
- [Key Features](#-key-features)
- [Technology Stack](#-technology-stack)
- [Dataset Information](#-dataset-information)
- [System Architecture](#-system-architecture)
- [Project Workflow](#-project-workflow)
- [Installation & Setup](#-installation--setup)
- [Folder Structure](#-folder-structure)
- [Dashboard & Visualizations](#-dashboard--visualizations)
- [SQL Analytics](#-sql-analytics)
- [Key Results & Insights](#-key-results--insights)
- [Future Enhancements](#-future-enhancements)
- [Contributing](#-contributing)
- [License](#-license)
- [Contact](#-contact)
- [Acknowledgements](#-acknowledgements)

---

## 📖 Project Overview

Modern retail businesses no longer operate through a single channel. From in-store purchases to mobile e-commerce, today's consumer interacts with brands across multiple touchpoints — and that complexity creates a massive data challenge. Without visibility across every channel, retailers make decisions based on incomplete pictures: over-stocking in one city, missing demand spikes in another, or misreading which product category actually drives revenue.

This project builds a **full-stack retail analytics system** that consolidates transaction data from **Online and Offline sales channels**, applies structured data processing using Python and SQL, and delivers a rich, interactive Power BI dashboard for business decision-making.

The system was designed with two audiences in mind: **data analysts** who need reproducible, well-documented pipelines, and **business stakeholders** who need clear, visual answers without digging into code.

---

## 💼 Business Problem

Retail businesses transitioning from brick-and-mortar to hybrid digital models face several recurring challenges:

- **Channel Blind Spots** — No unified view of how online vs. offline channels perform against each other or by time period
- **Inventory Misallocation** — Products are stocked based on intuition rather than actual demand signals across cities
- **Customer Segment Confusion** — Marketing spend is poorly targeted because segment-level revenue contribution is unknown
- **Shipping Inefficiencies** — Delivery performance varies significantly by region, yet no monitoring exists
- **Revenue Concentration Risk** — A handful of products and categories drive the majority of revenue, but this is rarely quantified

This project directly addresses each of these problems by building a structured analytics pipeline that turns 500 transaction records spanning the full 2025 calendar year into a decision-ready intelligence layer.

---

## ✨ Key Features

| Feature | Description |
|---|---|
| 📡 **Multi-Channel Integration** | Unified analysis of Online and Offline transaction streams with percentage revenue contribution per channel |
| 📦 **Inventory Channel Mapping** | Pivot-based product-channel allocation matrix showing Online vs. Offline quantity split per SKU |
| 📊 **Interactive Power BI Dashboard** | KPI cards, slicers by Region/Category/Year, trend lines, and drill-through capabilities |
| 📈 **Month-over-Month Growth Tracking** | SQL window functions (LAG) to compute MoM revenue growth percentage across all periods |
| 🏙️ **City-Level Market Intelligence** | Revenue ranking by city (Hyderabad, Mumbai, Bangalore, Delhi, Chennai, Pune) with RANK() analytics |
| 🛒 **Pareto Analysis (80/20 Rule)** | CTE-based cumulative revenue analysis to identify the ~20% of products driving ~80% of sales |
| 👥 **Customer Segment Profiling** | Revenue breakdown by Consumer, Corporate, and Home Office segments |
| 🚚 **Shipping Performance Analysis** | Average shipping days calculated by region; East vs. Central regional delivery comparison |
| 🔍 **Outlier Detection** | IQR-based outlier identification across price, quantity, and total_sales columns |
| 📉 **Seasonal Trend Detection** | Monthly and yearly sales trends with peak/dip detection via ranking window functions |

---

## 🛠️ Technology Stack

| Layer | Tool / Library | Purpose |
|---|---|---|
| **Language** | Python 3.10+ | Data processing, EDA, visualization scripting |
| **Data Manipulation** | Pandas | DataFrame operations, groupby aggregations, feature engineering |
| **Visualization** | Matplotlib, Seaborn | Exploratory charts — bar, line, boxplot, stacked horizontal bar |
| **Database** | PostgreSQL 15 | Structured query analytics, window functions, CTEs |
| **ORM / Connector** | SQLAlchemy + psycopg2 | Python-to-PostgreSQL connection for SQL-backed analysis |
| **BI Dashboard** | Microsoft Power BI Desktop | Interactive dashboard with KPI cards, slicers, and drill-through |
| **Notebook Environment** | Jupyter Notebook | Reproducible EDA and SQL integration notebooks |
| **Spreadsheet Layer** | Microsoft Excel (.xltx) | Supplementary tabular reporting and quick summaries |
| **Version Control** | Git + GitHub | Code management, collaboration, and portfolio hosting |

---

## 📂 Dataset Information

### Source

The primary dataset is `omnichannel_Sales.csv` — a structured transaction-level dataset representing **500 retail orders** placed across Online and Offline channels throughout the 2025 calendar year (January 2025 – December 2025).

A secondary retail dataset (`sales_data.csv`) covering multi-year transactional records with shipping, customer segment, and geographic data was used for the retail sales dimension of the project.

### Dataset Schema — `omnichannel_Sales.csv`

| Column | Type | Description |
|---|---|---|
| `order_id` | Integer | Unique transaction identifier |
| `order_date` | String (datetime) | Timestamp of order placement |
| `product` | String | Product name (e.g., Laptop, Backpack, Watch) |
| `category` | String | Product category — Electronics, Fashion, Accessories |
| `city` | String | City of transaction (6 Indian metros) |
| `channel` | String | Sales channel — Online or Offline |
| `quantity` | Integer | Number of units sold per order |
| `price` | Integer | Unit price in INR |
| `total_sales` | Integer | Total order value = quantity × price |

**Key Statistics:**
- 📦 500 transactions | 9 features
- 💰 Total Revenue: ₹3,64,12,730
- 🛍️ Average Order Value: ₹72,825
- 🏙️ 6 cities: Hyderabad, Chennai, Bangalore, Delhi, Pune, Mumbai
- 📱 3 categories: Electronics, Fashion, Accessories
- 📡 2 channels: Online, Offline

### Data Preprocessing Steps

**1. Loading & Standardization**
Column names were lowercased and spaces replaced with underscores for consistent programmatic access.

**2. Date Parsing & Feature Engineering**
`order_date` and `ship_date` were converted to `datetime` objects. Three features were derived: `year`, `month`, and `day_of_week` from order dates. A `shipping_days` column was computed as the difference between ship date and order date.

**3. Null Handling**
Missing `postal_code` values were imputed using category-level median values. Remaining nulls were filled with zero to maintain row integrity.

**4. Data Validation**
Negative shipping days (logistically impossible records) were filtered out. Numeric summaries and sanity checks were run across all critical columns.

**5. Outlier Detection**
IQR-based outlier bounds were computed for `price`, `quantity`, and `total_sales`. Boxplots were generated to visually confirm distribution shape before any removal decisions.

---

## 🏗️ System Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                        DATA SOURCES                             │
│  omnichannel_Sales.csv  │  sales_data.csv  │  External Inputs   │
└────────────────┬────────────────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────────────────┐
│                   DATA PROCESSING LAYER (Python)                │
│  • Pandas: Load, clean, normalize, engineer features            │
│  • Matplotlib / Seaborn: EDA visualizations                     │
│  • Jupyter Notebooks: Reproducible analysis pipeline            │
└────────────────┬────────────────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────────────────┐
│                   SQL ANALYTICS LAYER (PostgreSQL)              │
│  • Revenue aggregation by channel, city, product                │
│  • Window functions: LAG, RANK, SUM OVER                        │
│  • CTEs for Pareto and cumulative analysis                      │
│  • SQLAlchemy bridge for Python ↔ PostgreSQL queries            │
└────────────────┬────────────────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────────────────┐
│               VISUALIZATION & REPORTING LAYER                    │
│  • Power BI Dashboard (.pbix): KPIs, slicers, trend charts      │
│  • Excel Template (.xltx): Tabular reporting exports            │
│  • PowerPoint Report: Stakeholder presentation deck             │
└─────────────────────────────────────────────────────────────────┘
```

> 📸 *Architecture diagram placeholder — replace with your workflow image*
> `![Architecture Diagram](images/architecture_diagram.png)`

---

## 🔄 Project Workflow

```
Raw CSV Data
    │
    ├── [1] Load & Inspect        → df.info(), df.describe(), df.isnull()
    │
    ├── [2] Clean & Engineer      → Date parsing, shipping_days, year/month/dow
    │
    ├── [3] EDA & Visualization   → Category, region, segment, product analysis
    │
    ├── [4] SQL Validation        → PostgreSQL queries confirm Python findings
    │
    ├── [5] Advanced Analytics    → MoM growth, Pareto, channel share, city rank
    │
    └── [6] Power BI Dashboard    → Interactive KPIs, slicers, drill-through
```

---

## ⚙️ Installation & Setup

### Prerequisites

Make sure the following are installed on your system:

- Python 3.10 or higher
- PostgreSQL 15+
- Jupyter Notebook or JupyterLab
- Microsoft Power BI Desktop (Windows)
- Git

### Step-by-Step Setup

**1. Clone the Repository**
```bash
git clone https://github.com/yourusername/omnichannel-retail-analytics.git
cd omnichannel-retail-analytics
```

**2. Create a Virtual Environment (Recommended)**
```bash
python -m venv venv
source venv/bin/activate       # On Windows: venv\Scripts\activate
```

**3. Install Python Dependencies**
```bash
pip install -r requirements.txt
```

**4. Configure PostgreSQL**

Create a database and update the connection credentials in `notebooks/omnichannel_SQL.ipynb`:
```python
username = "your_postgres_username"
password = "your_postgres_password"
host     = "localhost"
port     = "5432"
database = "your_database_name"
```

**5. Load Data into PostgreSQL**

Run the SQL scripts to set up your schema and load data:
```bash
psql -U your_username -d your_database -f sql/omnichannel_queries.sql
psql -U your_username -d your_database -f sql/retailsales_SQL.sql
```

**6. Run the Jupyter Notebooks**

Start with the EDA notebook, then proceed to the SQL notebook:
```bash
jupyter notebook
```
Open notebooks in this recommended order:
- `notebooks/omnichannel_retail.ipynb` — Main omnichannel EDA
- `notebooks/Retailsales.ipynb` — Retail sales EDA
- `notebooks/omnichannel_SQL.ipynb` — SQL-backed advanced analytics

**7. Open the Power BI Dashboard**

Open `dashboard/omnichannel_dashboard.pbix` in Power BI Desktop. If prompted, update the data source path to point to your local CSV file or PostgreSQL connection.

---

## 📁 Folder Structure

```
omnichannel-retail-analytics/
│
├── 📂 data/
│   ├── omnichannel_Sales.csv           # Primary omnichannel transaction dataset
│   └── sales_data.csv                  # Retail sales dataset (multi-year)
│
├── 📂 notebooks/
│   ├── omnichannel_retail.ipynb        # Main EDA: channels, cities, products
│   ├── Retailsales.ipynb               # Retail sales EDA and feature engineering
│   └── omnichannel_SQL.ipynb           # SQL analytics via SQLAlchemy + PostgreSQL
│
├── 📂 sql/
│   ├── omnichannel_queries.sql         # Advanced SQL: MoM growth, Pareto, city rank
│   ├── sales_data.sql                  # Core SQL: aggregations, segments, shipping
│   └── retailsales_SQL.sql             # Retail-specific SQL analytics
│
├── 📂 dashboard/
│   ├── omnichannel_dashboard.pbix      # Power BI dashboard (main)
│   └── omnichannel_BI.pbix             # Power BI alternate/extended report
│
├── 📂 reports/
│   ├── Omnichannel-Analysis-Project-Report.pptx   # Stakeholder presentation
│   └── omnichannel.xltx                           # Excel reporting template
│
├── 📂 images/
│   ├── architecture_diagram.png        # System architecture workflow
│   ├── dashboard_overview.png          # Power BI dashboard screenshot
│   ├── channel_comparison.png          # Online vs Offline bar chart
│   ├── monthly_trend.png               # Sales trend line chart
│   ├── pareto_chart.png                # 80/20 product revenue analysis
│   └── city_performance.png            # City-level revenue heatmap
│
├── requirements.txt                    # Python dependencies
├── .gitignore
└── README.md
```

---

## 📊 Dashboard & Visualizations

### Power BI Dashboard Components

The dashboard (`omnichannel_dashboard.pbix`) was built with the following visual components:

**KPI Cards**
- Total Revenue (₹3.64 Cr across 500 transactions)
- Average Order Value (₹72,825)
- Total Orders and Unique Customers

**Sales by Channel — Bar Chart**
Online vs. Offline revenue comparison with percentage contribution labels, enabling at-a-glance channel performance assessment.

**Monthly Sales Trend — Line Chart**
Month-by-month revenue visualization from January to December 2025, with automated peak and dip detection logic built in SQL.

**Category & Sub-Category Breakdown — Clustered Bar**
Revenue split across Electronics, Fashion, and Accessories, with product-level drill-through capability.

**City Performance — Ranked Table**
Revenue by city (Hyderabad, Mumbai, Bangalore, Delhi, Chennai, Pune) ranked using SQL window functions, surfaced directly in Power BI.

**Shipping Performance by Region**
Average shipping days broken down by region, highlighting the East region's delivery efficiency advantage.

**Interactive Slicers**
Filters for Region, Category, Channel, and Year allow stakeholders to slice data without any technical knowledge.

> 📸 *Dashboard screenshot placeholders — replace with your actual Power BI exports*

```markdown
![Dashboard Overview](images/dashboard_overview.png)
![Channel Comparison](images/channel_comparison.png)
![Monthly Trend](images/monthly_trend.png)
![City Performance](images/city_performance.png)
```

---

## 🗄️ SQL Analytics

The project uses PostgreSQL with advanced SQL patterns to power the deeper analytics layer. Key queries are organized in the `sql/` directory.

### Highlights

**Channel Revenue with Percentage Share**
```sql
SELECT
    channel,
    SUM(total_sales) AS revenue,
    ROUND(100.0 * SUM(total_sales) / SUM(SUM(total_sales)) OVER (), 2) AS percentage
FROM "Omnichannel"
GROUP BY channel;
```

**Month-over-Month Growth with LAG**
```sql
SELECT
    year_month,
    SUM(total_sales) AS revenue,
    LAG(SUM(total_sales)) OVER (ORDER BY year_month) AS prev_month,
    ROUND(
        (SUM(total_sales) - LAG(SUM(total_sales)) OVER (ORDER BY year_month))
        * 100.0 / LAG(SUM(total_sales)) OVER (ORDER BY year_month), 2
    ) AS growth_pct
FROM "Omnichannel"
GROUP BY year_month
ORDER BY year_month;
```

**Pareto Analysis — Top Products by Cumulative Revenue**
```sql
WITH product_sales AS (
    SELECT product, SUM(total_sales) AS revenue
    FROM "Omnichannel" GROUP BY product
),
ranked AS (
    SELECT product, revenue,
           SUM(revenue) OVER () AS total_revenue,
           SUM(revenue) OVER (ORDER BY revenue DESC) AS cumulative_revenue
    FROM product_sales
)
SELECT product, revenue,
       ROUND(100.0 * revenue / total_revenue, 2) AS pct_contribution,
       ROUND(100.0 * cumulative_revenue / total_revenue, 2) AS cumulative_pct
FROM ranked ORDER BY revenue DESC;
```

---

## 📈 Key Results & Insights

After running the full analytics pipeline across both the Python EDA layer and the SQL analytics layer, the following insights were validated:

**Channel Performance**
Online and Offline channels were compared at total revenue level and monthly share. The SQL percentage contribution query revealed which channel had dominant share in specific months — useful for promotional planning.

**Category Concentration**
A small number of product categories drive a disproportionate share of revenue, consistent with the Pareto principle. Electronics led in total revenue among the three categories (Electronics, Fashion, Accessories), though precise share depends on the period examined.

**City-Level Variation**
Among the six metros — Hyderabad, Chennai, Bangalore, Delhi, Pune, and Mumbai — revenue concentration varied significantly. Some cities showed strong offline dominance while others leaned online, suggesting differentiated channel strategies are needed per market.

**Shipping Performance**
Average shipping days calculated by region showed that the East region processed deliveries fastest, while the Central region had marginally higher average delivery times. Consistent shipping performance was observed overall across the dataset.

**Customer Segment Insight**
The Consumer segment accounted for the largest share of revenue in the retail sales dataset, followed by Corporate and Home Office. This has direct implications for CRM prioritization and targeted campaigns.

**Seasonal Patterns**
Monthly aggregations revealed distinct seasonal peaks and dips across the 2025 calendar year. These patterns were surfaced both in Python (monthly line charts) and in SQL (RANK-based peak/dip detection), confirming that the Consumer peak aligns with festive season months.

> 📸 *Add your KPI chart screenshots here*
> `![KPI Summary](images/kpi_summary.png)`

---

## 🚀 Future Enhancements

The current system establishes a strong analytical foundation. The following enhancements are planned for future iterations:

**AI-Powered Sales Forecasting**
Integrate ARIMA, Prophet, or LSTM-based models to generate 30/60/90-day revenue forecasts per channel and category, moving from descriptive to predictive analytics.

**Real-Time Streaming Pipeline**
Replace batch CSV ingestion with Apache Kafka or AWS Kinesis to enable live transaction streaming and real-time dashboard refresh.

**Cloud Deployment**
Migrate the PostgreSQL backend to AWS RDS or Google Cloud SQL, with Power BI connected via DirectQuery for always-fresh reporting.

**Product Recommendation Engine**
Apply collaborative filtering or market basket analysis to recommend complementary products based on historical purchase patterns.

**Mobile-First Dashboard**
Build a lightweight mobile dashboard version using Power BI Mobile App or Streamlit for field sales teams and store managers.

**Automated Reporting**
Schedule weekly business performance reports via Power Automate or Python-based email triggers with PDF summaries attached.

---

## 🤝 Contributing

Contributions are welcome and appreciated. This project is open for collaboration from data analysts, BI developers, and Python developers.

**How to Contribute:**

1. Fork the repository
2. Create your feature branch: `git checkout -b feature/your-feature-name`
3. Commit your changes with a clear message: `git commit -m "Add: description of your change"`
4. Push to your branch: `git push origin feature/your-feature-name`
5. Open a Pull Request with a description of what you changed and why

**Please ensure:**
- Code is clean and commented
- New notebooks include markdown explanations
- SQL queries are formatted consistently
- No sensitive credentials are committed

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.

---

## 📄 License

This project is licensed under the **MIT License** — you are free to use, modify, and distribute this project with attribution.

See the [LICENSE](LICENSE) file for full terms.

---

## 📬 Contact

**Project Author**

- 🌐 GitHub: [@yourusername](https://github.com/yourusername)
- 💼 LinkedIn: [Your LinkedIn Profile](https://linkedin.com/in/yourprofile)
- 📧 Email: youremail@example.com

*Feel free to reach out for collaborations, feedback, or questions about this project.*

---

## 🙏 Acknowledgements

- **Kaggle & Open Retail Datasets** — for inspiring the dataset structure used in this project
- **Microsoft Power BI Community** — for documentation and dashboard design patterns
- **PostgreSQL Documentation** — for window function references and query optimization guidance
- **Pandas & Seaborn Communities** — for comprehensive EDA tooling that made the analysis workflow efficient
- **Jupyter Project** — for the reproducible notebook environment that ties the entire pipeline together

---

<div align="center">

⭐ **If this project helped you, consider giving it a star!** ⭐

*Built with 💻 Python · 🗃️ SQL · 📊 Power BI · ☕ determination*

</div>
