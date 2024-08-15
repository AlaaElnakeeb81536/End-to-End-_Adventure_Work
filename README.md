### Sales Data Mart
Adventure Works Data Warehouse project (Sales data mart) using SQL , SSIS , PowerPi.

### Overview
The AdventureWorks2019 Sales Data Mart Project is a powerful data solution built on SQL Server and SQL Server Integration Services (SSIS) and powerpi.
It efficiently extracts, transforms, and loads data from SQL Server into a star schema-based data model.

### Data Mart
A data mart is an organized subset of a data warehouse that is targeted at a particular department or functional area inside a company.
It offers a focused and streamlined perspective of the data, meeting particular reporting and analytical requirements. Smaller in size and breadth, 
data marts usually contain pertinent information for a particular user group, such finance, sales, or marketing. They are arranged according to particular topics, 
like sales, customer information, or product details, and they are optimized, converted, and formatted for effective domain querying and analysis.

### Data Sources
The AdventureWorks2019 dataset serves as the main source of data for the AdventureWorks2019 Sales Data Mart Project. 
This dataset offers extensive data about sales, clients, goods, and other topics. AdventureWorks (2019)

### Prerequisites
Before getting started with the proejct, ensure you have the following prerequisites installed:

SQL Server
SQL Server Integration Services (SSIS)
PowerPi

 ### Key Features:
Data Pipeline: SSIS was implemented to provide smooth data transformation and extraction.
Star Schema: A star schema was created for better statistics and querying.
Change Management: For data integrity, included Slowly Changing Dimensions.
ETL Processes: Supported both Full Load and Incremental Load situations by utilizing Derived Column for computed fields.

#### Data Modeling (Star Schema)
The project employs a star schema for streamlined analytics:

- Fact Sales: Centralizes key sales measures.
- Dim Product: Manages product details.
- Dim Customer: Comprehensive customer information.
- Dim Date: Time-related data for analysis.
- Dim Territory: Stores territory details.
  
![image](https://github.com/user-attachments/assets/d56d3ff5-1e90-467b-a87a-2bc6d58892a7)

### ETL
- The ETL process is comprised of 3 steps that enable data integration from source to destination: data extraction, data transformation, and data loading.

## 1. Dimension Product
- Dim Product design extract customer data from the source database (OLEDB). Apply some transformation (Lookup and get data from different tables and replace Nulls values).

- Apply Slowly Changing Dimension (SCD) processing to handle orders changes.
![image](https://github.com/user-attachments/assets/50dd5290-e692-4741-8f60-36259443aad6)

## 2. Dimension Customer
- Dim customer design extract customer data from the source database (OLEDB). Apply some transformation (Lookup and get data from different tables and replace Nulls values).

- Apply Slowly Changing Dimension (SCD) processing to handle customer phone changes.

![image](https://github.com/user-attachments/assets/21461024-9191-4564-837a-7f1faa5d2eea)

## 3. Dim Date 
- Design extract customer data from the source database Excel file.
- Apply data convesion to Month_name column to reduce its length.
  
![image](https://github.com/user-attachments/assets/3133aa04-b8bf-4e37-8cc8-6bddb69f6de7)
  
## 4. Dim Territory
- Dim territory design extract customer data from the source database (OLEDB).

![image](https://github.com/user-attachments/assets/f89838d6-ee1d-48d9-b705-e992afe44553)


## 5. Fact Sales
- Data can be loaded from the source to the destination using Full Load Process 

![image](https://github.com/user-attachments/assets/60bd92bf-72bf-4e66-87a4-a8a01eed32c8)

### The Sales Data Mart Project has a major impact and yields noteworthy results:

- Effective Data Access: Obtaining important sales data quickly.

- Granular Analysis: In-depth knowledge of goods, clients, periods, and regions.

- Full Load is  employed in adaptive data management.

- Empowering Decision-Making: Provides extensive sales data to support strategic decisions.

- Resource Allocation: Makes efficient resource allocation decisions based on perceptive sales patterns.

- Improved Visualization: Impactful data visualization is made possible by structured data models, which also improve interpretability.
----------------------------------------
### Power PI:
## Page 1:
![image](https://github.com/user-attachments/assets/f08616ba-20f2-4938-8d94-6b5830ab5275)

The image is a sales analysis dashboard with several key metrics and visualizations. Here's a breakdown:

### 1. Top Metrics:
   - Total Sales: $29.36M
   - Sales Amount Avg: $486
   - Unit Sold: 60K
   - Avg Cost: $293

### 2. Visualizations:
   - **Total Sales vs. Cost by Month**:
      A bar chart that compares total sales and cost across different months. Sales appear in blue bars, and costs are represented by a red line.
   - **Current Year Sales vs. Previous Year Sales**:
      A line graph that compares the sales of the current year (CT_sales) against the previous year (PR_sales) over time.
   - **Total Sales and Profit by Territory/Country**:
      A world map highlighting sales and profit distribution across different regions, with emphasis on North America, Europe, and Australia.

The dashboard is visually organized to provide an overview of sales performance, trends over time, and geographic distribution.

## page 2:
![image](https://github.com/user-attachments/assets/f5ab2db6-fe19-4e1a-8452-019885e25532)

- Total Profit: The total profit generated, displayed as $11.69M.
- Freights: The total cost incurred for freights, displayed as $1.48M.
  
-**Profit Monthly Over Year (Line Chart)**

This line chart tracks monthly performance over the year.
Total Sales: Shown with a shaded area and a red line, the graph shows total sales peaking around May and November.
Profit: Displayed with a blue line, the profit remains relatively stable throughout the year with slight variations.

-**Profit & Sales by Continent (Pie Chart)**

This pie chart provides a breakdown of profit and sales across different continents:
Europe: $3.54M (30.31%)
North America: $3.53M (30.23%)
Pacific: $4.61M (39.46%)

-**Total Quantity by Country (Bar Chart)**

This bar chart shows the quantity of products sold in different countries:
United States: 21K units
Australia: 13K units
Canada: 8K units
United Kingdom: 7K units
Germany: 6K units
France: 6K units

-**Total Quantity by Month (Bar Chart)**
This bar chart illustrates the total quantity of products sold per month:
The sales peak in May with 6.2K units sold.
The lowest sales occur in July with 4.0K units sold.

## page 3:
![image](https://github.com/user-attachments/assets/655384ab-0959-4e38-8ad3-8039013e189a)

## page 4:
![image](https://github.com/user-attachments/assets/c99053f1-41f7-447c-878c-0948844b8953)

## page 5: 
![image](https://github.com/user-attachments/assets/21a7edd9-58a2-4593-8c53-14908e9d9608)

## page 6:
![image](https://github.com/user-attachments/assets/50862da0-2ead-4a7a-ae86-6ff39508d901)


