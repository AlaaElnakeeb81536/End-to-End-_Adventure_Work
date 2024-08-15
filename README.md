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
some insights derived from the Sales & Profit Analysis Dashboard:

**1. Profit Distribution**

Accessories dominate the profit landscape with a total of $438.67M, significantly higher than other categories like Bikes and Clothing.
Within Accessories, Tires and Tubes and Helmets are the top-performing subcategories, contributing $153.7M and $141.06M, respectively.

**2. Product-Level Performance**

HL Mountain Tire leads in profit among individual products, generating $30.59M.
The ML Mountain Tire and HL Road Tire follow, with $21.8M and $17.51M in profits, respectively.
This indicates that mountain and road tires are crucial to the overall profitability of the company.

**3. Sales Target Achievement**

The dashboard shows that the actual sales ($29.36M) are slightly below the monthly target of $32.24M, indicating a shortfall of about $2.88M. This suggests a need to explore strategies to boost sales.
On the profit side, the company is closer to its target, with actual profits of $11.69M against a target of $12.83M. While there is a gap, it is smaller than the sales shortfall, indicating relatively better control over costs or higher profit margins.

**4. Strategic Focus Areas**

Bottles and Cages and Fenders are underperforming subcategories within Accessories, with profits of $35.56M and $29.18M, respectively. These areas may require further attention to enhance profitability.
Clothing as a category shows the lowest profit contribution at $136.41M. This could be an area for either a strategic revamp or reallocation of resources to more profitable categories.

## page 4:
![image](https://github.com/user-attachments/assets/c99053f1-41f7-447c-878c-0948844b8953)
**1. Sales Target Achievement**

The actual sales for the month stand at $29.36M, which is slightly below the sales target of $32.24M. This shortfall of about $2.88M indicates that the company is not meeting its sales targets, signaling a potential need to adjust sales strategies.

**2. Sales Distribution Across Categories**

Bikes contribute the most to the total sales, with an impressive figure of $28.32M. This highlights the dominance of the Bikes category in driving overall sales.
Accessories are the next major contributor, generating $700.76K in sales, though far behind Bikes.
Clothing ranks third with $339.77K in sales, suggesting it is a less significant contributor to overall revenue.

**3. Subcategory Performance**

Within Accessories, Tires and Tubes lead with $245.53K in sales, followed by Helmets at $225.34K.
Other subcategories like Bottles and Cages and Fenders contribute relatively smaller amounts to the total sales, with $56.8K and $46.62K respectively.
Hydration Packs show the lowest sales within Accessories at $40.31K.

**4. Product-Level Sales Performance**

The HL Mountain Tire is the top-selling product within the Tires and Tubes subcategory, with sales of $48.86K.
The ML Mountain Tire follows with $34.82K in sales, and the HL Road Tire and Touring Tire also contribute significant amounts with $27.97K and $27.11K, respectively.
ML Road Tire shows the least sales among the listed products, at $23.14K.

**5. Potential Growth Opportunities**

Given that the sales are slightly under target, there may be opportunities to boost sales through promotional activities, especially for high-margin and high-volume products like Bikes and Tires.
The Accessories category, while performing reasonably well, shows room for growth, especially in subcategories like Bottles and Cages, and Fenders, which are underperforming relative to their peers.

**6. Focus Areas**

Bikes should continue to be a focal point for sales strategies given their substantial contribution to overall revenue.
There may be potential to enhance sales in the Clothing category, which currently contributes the least among the major categories.
Optimizing inventory and marketing strategies for top-selling products like HL Mountain Tire could help close the gap in sales targets.

## page 5: 
![image](https://github.com/user-attachments/assets/21a7edd9-58a2-4593-8c53-14908e9d9608)
**1. Overview of Product Performance**

The dashboard covers 505 products across 5 categories and 38 subcategories, with an average revenue per product of $371.
The total sales amount to $10.73M with 28,959 units sold, generating a total profit of $4.29M at an average profit margin of 66.68%.

**2. Top Subcategories by Revenue**

Mountain Bikes lead with a revenue of $4.33M, followed by Road Bikes at $4.11M, indicating that these two subcategories are the main drivers of revenue.
Touring Bikes contribute significantly less with $1.77M in revenue, and other subcategories like Tires and Tubes, Helmets, and Jerseys generate minimal revenue, each contributing under $0.2M.

**3. Top Products by Sales and Profit**

The Mountain-200 Black, 46 is the top-performing product, generating $723.58K in sales from 326 units, with a profit of $315.43K and a high profit margin of 77.28%.
Other variants of the Mountain-200 series (Silver and Black) also feature prominently in both sales and profits, indicating their popularity.
The Road-250 series also shows strong sales, with Road-250 Black, 52 generating $376.28K in sales and a profit of $127.48K, albeit at a lower profit margin of 51.24%.

**4. Category by Revenue & Quantity**

Bikes dominate the sales and quantity sold, contributing over $10.21M from 12K units sold. This reaffirms the importance of the Bikes category in overall business performance.
Accessories contribute $236K in revenue from 2K units sold, while Clothing shows the lowest contribution with $86K from 2K units sold.

**5. Product Profitability**
Most top-selling products have a profit margin above 50%, with the Mountain-200 series consistently achieving margins over 75%. This highlights the profitability of these products.
The Touring-1000 and Road-350 series have comparatively lower profit margins, ranging between 50-60%. These may be areas to explore for potential margin improvements.
6. Strategic Insights
Mountain and Road Bikes are clearly the most important products, both in terms of sales and profitability. The focus should be on maintaining and enhancing the performance of these products.
There may be an opportunity to increase revenue and margins in the Touring Bikes subcategory by focusing on the best-performing models.
The Accessories and Clothing categories, although contributing less to overall revenue, could be areas of focus for growth, either through new product introductions or marketing strategies to boost sales.

## page 6:
![image](https://github.com/user-attachments/assets/50862da0-2ead-4a7a-ae86-6ff39508d901)

**1. Overview of Customer Base**

The dashboard tracks 19,120 customers across 271 cities.
This extensive customer base highlights the reach and diversity of the business's market.

**2. Top Customers by Revenue**

The top customers by revenue include:
Nichole Nara ($13,295)
Kaitlyn J Henderson ($13,294)
Margaret He ($13,269)
Randall M Dominic ($13,266)
Adriana L Gonzalez ($13,243)
These top customers are tightly clustered in terms of revenue, each contributing over $13,000.

**3. Top Cities by Revenue & Profit**

London is the highest-grossing city with $803K in total sales and $318K in profit. This indicates that London is a critical market for the business.

Paris follows with $540K in sales and $211K in profit, making it another significant city for the business.

Other notable cities include Wollongong ($339K in sales, $132K in profit), Warrnambool ($327K in sales, $130K in profit), and Bendigo ($315K in sales, $125K in profit).

These cities, although smaller in revenue compared to London and Paris, still represent important markets with significant profitability.

**4. Strategic Insights**

London and Paris are key cities for both revenue and profit. Targeted strategies to further penetrate these markets could yield significant returns.
The close clustering of top customers by revenue suggests that they may have similar purchasing patterns or preferences. Understanding these patterns could help in developing targeted marketing or loyalty programs.
Expanding focus on other top cities like Wollongong, Warrnambool, and Bendigo could diversify revenue streams and reduce dependency on the top two cities.


