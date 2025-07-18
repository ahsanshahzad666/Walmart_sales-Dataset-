# Walmart Data Pipeline Project: From Kaggle API to SQL Insights with Python </h1>

## Project Overview

![walmart_project-piplelines](https://github.com/user-attachments/assets/1bd7d129-594b-4c8e-8b93-e2edb555ff83)

This project is an end-to-end data analysis solution designed to extract critical business insights from Walmart sales data. We utilize Python for data processing and analysis, SQL for advanced querying, and structured problem-solving techniques to solve key business questions. The project is ideal for data analysts looking to develop skills in data manipulation, SQL querying, and data pipeline creation.


## Project Steps 

### 1. Set Up the Environment
- **Tools Used:** Visual Studio Code (VS Code), Python, SQL (MySQL)
- **Goal:** Create a structured workspace within VS Code and organize project folders for smooth development and data handling.

### 2. Set Up Kaggle API</h3>
 - API Setup: Obtain your Kaggle API token from Kaggle by navigating the profile settings and downloading the JSON file.
 - Use the command kaggle datasets download -d <dataset-path> to pull datasets directly into your project.

### 3. Download Walmart Sales Data
  - **Data Source:** Use the Kaggle API to download the Walmart sales datasets from Kaggle.
  - **Dataset Link:** [Walmart Sales Dataset](https://www.kaggle.com/najir0123/walmart-10k-sales-datasets)
  - **Storage:** Save the data in the <code>data</code> folder for easy reference and access.

### 4. Install Required Libraries and Load Data
   - **Libraries:** Install necessary Python libraries using the command below:
     ```bash
     pip install pandas numpy sqlalchemy mysql-connector-python 
     ```
     - **Loading Data**: Read the data into a Pandas DataFrame for initial analysis and transformations.
    
### 5. Explore the Data
   - **Goal**: Conduct an initial data exploration to understand data distribution, check column names, types, and identify potential issues.
   - **Analysis**: Use functions like `.info()`, `.describe()`, and `.head()` to get a quick overview of the data structure and statistics.

### 6. Data Cleaning
   - **Remove Duplicates**: Identify and remove duplicate entries to avoid skewed results.
   - **Handle Missing Values**: Drop rows or columns with missing values if they are insignificant; fill values where essential.
   - **Fix Data Types**: Ensure all columns have consistent data types (e.g., dates as `datetime`, prices as `float`).
   - **Currency Formatting**: Use `.replace()` to handle and format currency values for analysis.
   - **Validation**: Check for any remaining inconsistencies and verify the cleaned data.

### 7. Feature Engineering
   - **Create New Columns**: Calculate the `Total Amount` for each transaction by multiplying `unit_price` by `quantity` and adding this as a new column.
   - **Enhance Dataset**: Adding this calculated field will streamline further SQL analysis and aggregation tasks.

### 8. Load Data into MySQL
   - **Set Up Connections**: Connect to MySQL using `sqlalchemy` with appropriate adapters (`mysql-connector-python` for MySQL) to load the cleaned data into each database.
     
     ```bash
     import mysql.connector
     from sqlalchemy import create_engine
     engine = create_engine("mysql+mysqlconnector://root:password@localhost/walmart_db")
     df.to_sql("walmart_sales", engine, index=False, if_exists="replace")
     ```
   - **Table Creation**: Set up tables in both MySQL and PostgreSQL using Python `SQLAlchemy` to automate table creation and data insertion.
   - **Verification**: Run initial SQL queries to confirm that the data has been loaded accurately.

### 9. SQL Analysis: Complex Queries and Business Problem Solving
   - **Business Problem-Solving**: Write and execute complex SQL queries to answer critical business questions, such as:
     - Revenue trends across branches and categories.
     - Identifying best-selling product categories.
     - Sales performance by time, city, and payment method.
     - Analyzing peak sales periods and customer buying patterns.
     - Profit margin analysis by branch and category.

### 10. Documentation and Publishing
- Documentation: Clean Markdown documentation like this README.md.
- Version Control: Pushed all files to GitHub.
- Included:
  - SQL scripts
  - Jupyter Notebooks
  - Cleaned datasets or download instructions

---

### 🗂 Project Structure

```plaintext
|-- data/                     # Raw data and transformed data
|-- sql_queries/              # SQL scripts for analysis and queries
|-- notebooks/                # Jupyter notebooks for Python analysis
|-- README.md                 # Project documentation
|-- requirements.txt          # List of required Python libraries
|-- main.py                   # Main script for loading, cleaning, and processing data
```

### Key Learnings & Insights
- Practical experience using Pandas + SQLAlchemy for ETL pipelines.
- Hands-on MySQL and PostgreSQL querying for business logic.
- Cleaned real-world data and performed custom feature engineering.
- Built confidence working with SQL joins, aggregations, and time-series data.

### Future Enhancements
Possible extensions to this project:
- Integration with a dashboard tool (e.g., Power BI or Tableau) for interactive visualization.
- Additional data sources to enhance analysis depth.
- Automation of the data pipeline for real-time data ingestion and analysis.

### Requirements
- Python
- MySQL
- Required Libraries:
   - pandas, numpy, sqlalchemy, mysql-connector-python, psycopg2
- Kaggle API Key for data access

