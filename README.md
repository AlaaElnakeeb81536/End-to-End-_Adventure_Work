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
The ETL process is comprised of 3 steps that enable data integration from source to destination: data extraction, data transformation, and data loading.

## 1. Dimension Product
Dim Product design extract customer data from the source database (OLEDB). Apply some transformation (Lookup and get data from different tables and replace Nulls values).

Apply Slowly Changing Dimension (SCD) processing to handle orders changes.
![image](https://github.com/user-attachments/assets/50dd5290-e692-4741-8f60-36259443aad6)

## 2. Dimension Customer
Dim customer design extract customer data from the source database (OLEDB). Apply some transformation (Lookup and get data from different tables and replace Nulls values).

Apply Slowly Changing Dimension (SCD) processing to handle customer phone changes.

![image](https://github.com/user-attachments/assets/21461024-9191-4564-837a-7f1faa5d2eea)

## 3. Dim Date 
Design extract customer data from the source database Excel file.
Apply data convesion to Month_name column to reduce its length. 
  ![image](https://github.com/user-attachments/assets/0188997b-5701-4b59-849d-637a49d4eab3)
  
## 4. Dim Territory
Dim territory design extract customer data from the source database (OLEDB).

![image](https://github.com/user-attachments/assets/786e9ce5-b341-4287-a74e-0d109b748e5a)

## 5. Fact Sales
Data can be loaded from the source to the destination using Full Load Process 

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

## page 2:
![image](https://github.com/user-attachments/assets/f5ab2db6-fe19-4e1a-8452-019885e25532)

## page 3:
![image](https://github.com/user-attachments/assets/655384ab-0959-4e38-8ad3-8039013e189a)

## page 4:
![image](https://github.com/user-attachments/assets/c99053f1-41f7-447c-878c-0948844b8953)

## page 5: 
![image](https://github.com/user-attachments/assets/21a7edd9-58a2-4593-8c53-14908e9d9608)

## page 6:
![image](https://github.com/user-attachments/assets/50862da0-2ead-4a7a-ae86-6ff39508d901)


