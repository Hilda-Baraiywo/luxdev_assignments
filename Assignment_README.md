## Online Retail Analysis

Project snapshot and analysis of the Online Retail Data Set. Primary analysis and reproducible steps are contained in the notebook [CH05_PROJECT_DA-DS/online_retail.ipynb](CH05_PROJECT_DA-DS/online_retail.ipynb). Supporting files and generated outputs live under the `CH05_PROJECT_DA-DS` folder.

Links to workspace files
- Repository README: [CH05_PROJECT_DA-DS/README.md](CH05_PROJECT_DA-DS/README.md)  
- Notebook: [CH05_PROJECT_DA-DS/online_retail.ipynb](CH05_PROJECT_DA-DS/online_retail.ipynb)  
- Cleaned dataset: [CH05_PROJECT_DA-DS/outputs/online_retail_clean.csv](CH05_PROJECT_DA-DS/outputs/online_retail_clean.csv)  
- Generated outputs:
  - Country performance: [CH05_PROJECT_DA-DS/outputs/country_performance.csv](CH05_PROJECT_DA-DS/outputs/country_performance.csv)  
  - Global product demand: [CH05_PROJECT_DA-DS/outputs/global_product_demand.csv](CH05_PROJECT_DA-DS/outputs/global_product_demand.csv)  
  - Monthly revenue (2011): [CH05_PROJECT_DA-DS/outputs/revenue_monthly_2011.csv](CH05_PROJECT_DA-DS/outputs/revenue_monthly_2011.csv)  
  - Top customers: [CH05_PROJECT_DA-DS/outputs/top_customers.csv](CH05_PROJECT_DA-DS/outputs/top_customers.csv)  
- SQL used for data extraction/transform: [CH05_PROJECT_DA-DS/sql/online_retail.sql](CH05_PROJECT_DA-DS/sql/online_retail.sql) 
- This file: [Assignment_README.md](Assignment_README.md)

Project overview
- Goal: Clean, explore, and summarize an online retail transactions dataset to produce actionable summary tables (country-level performance, product demand, monthly revenue, top customers).
- Primary analysis is implemented in [CH05_PROJECT_DA-DS/online_retail.ipynb](CH05_PROJECT_DA-DS/online_retail.ipynb). The notebook covers data import, cleaning, exploratory data analysis (EDA), aggregation, plotting, and export of CSV summaries.

Key steps performed in the notebook (high level)
1. Data ingestion and initial inspection of raw records.  
2. Data cleaning:
   - Remove missing/invalid InvoiceNo or CustomerID rows.
   - Drop or correct negative/zero quantities and unit prices.
   - Normalize timestamps and types.
   Result saved as [CH05_PROJECT_DA-DS/outputs/online_retail_clean.csv](CH05_PROJECT_DA-DS/outputs/online_retail_clean.csv).
3. Aggregations and KPIs:
   - Country performance aggregation → [CH05_PROJECT_DA-DS/outputs/country_performance.csv](CH05_PROJECT_DA-DS/outputs/country_performance.csv).
   - Product demand ranking and global demand metrics → [CH05_PROJECT_DA-DS/outputs/global_product_demand.csv](CH05_PROJECT_DA-DS/outputs/global_product_demand.csv).
   - Monthly revenue time series for 2011 → [CH05_PROJECT_DA-DS/outputs/revenue_monthly_2011.csv](CH05_PROJECT_DA-DS/outputs/revenue_monthly_2011.csv).
   - Top customers by revenue/quantity → [CH05_PROJECT_DA-DS/outputs/top_customers.csv](CH05_PROJECT_DA-DS/outputs/top_customers.csv).

How to reproduce locally
1. Create and activate a Python virtual environment:
```bash
python -m venv .venv
source .venv/bin/activate  #or 
.venv\Scripts\activate on Windows
```
2. Install typical data stack (adjust versions as needed):
```bash
pip install jupyterlab pandas numpy matplotlib seaborn notebook sqlalchemy
```
3. Launch the notebook:
```bash
jupyter lab
```
Open [CH05_PROJECT_DA-DS/online_retail.ipynb](CH05_PROJECT_DA-DS/online_retail.ipynb) and run all cells. This will regenerate the files under [CH05_PROJECT_DA-DS/outputs](CH05_PROJECT_DA-DS/outputs).

Notes about the SQL file
- The file [CH05_PROJECT_DA-DS/sql/online_retail.sql](CH05_PROJECT_DA-DS/sql/online_retail.sql) contains SQL queries used for extraction/aggregation (adapt for the SQL engine in use). Use a compatible SQL engine to run these queries against an imported raw dataset if you prefer SQL-based ETL.

Recommended next steps
- Add a requirements.txt or environment.yml for reproducible installs.
- Add unit tests / small validation scripts that confirm expected shapes/aggregates of CSV outputs.
- Convert notebook cells that perform data processing into Python modules for reuse in pipelines.