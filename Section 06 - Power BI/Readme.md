# Section 06 - Power BI

## Overview
This section introduces **Power BI**, a business analytics tool by Microsoft that enables users to visualize data, share insights, and collaborate across their organizations. The course covers Power BI from basics to advanced levels, focusing on data visualization, dashboards, and DAX (Data Analysis Expressions) to build interactive reports.

## Topics Covered
1. **Introduction to Power BI**
   - Components of Power BI
   - Power BI Architecture
   - Product Portfolio (Desktop, Service, Premium, Embedded)
   - Installing Power BI Desktop

2. **Power BI Desktop Features**
   - **Get Data**: Connect to 80+ data sources (on-premises and cloud)
   - **Data Preparation**: Shape, transform, and clean data using Power Query Editor
   - **Data Modeling**: Build relationships between tables and create calculated columns
   - **Data Visualization**: Use 150+ visuals via drag-and-drop interface
   - **Publishing Reports**: Share insights via cloud or on-premises

3. **Power BI Services and Integration**
   - Connecting Power BI Service with Desktop
   - Real-time dashboards and automatic data refresh
   - Integration with Excel and other Microsoft tools
   - Sharing and collaborating through cloud services

4. **Power Query Editor**
   - Managing queries and data transformations
   - Applied Steps: Tracking and editing transformation steps
   - Appending vs Merging queries
   - Grouping and Aggregation

5. **Understanding DAX (Data Analysis Expressions)**
   - **Measures vs Calculated Columns**
   - DAX Functions: `SUM()`, `AVERAGE()`, `COUNT()`, `CALCULATE()`
   - Time Intelligence Functions: `TOTALYTD()`, `PREVIOUSMONTH()`
   - Contexts: Row Context vs Filter Context
   - Iterative Functions: `SUMX()`, `AVERAGEX()`

6. **Power BI Functions**
   - Aggregations: `SUM`, `MIN`, `MAX`
   - Time Intelligence: `DATEDIFF`, `DATEADD`
   - Calculated Tables: Using `CALENDAR()` for date hierarchies
   - Filtering with `CALCULATE()`

7. **Data Visualization in Power BI**
   - Building Blocks of Power BI: Datasets, Reports, Dashboards, and Tiles
   - Common Visuals: Bar charts, Line charts, Pie charts, Maps, Funnel charts
   - Creating and customizing visualizations
   - Tooltips and Drill-through reports

8. **Key Performance Indicators (KPIs)**
   - Understanding KPIs and their importance
   - Creating KPI visualizations
   - Setting base measures, targets, and thresholds

9. **Exploratory Data Analysis (EDA)**
   - Data Profiling: Column quality, distribution, and profiling
   - Handling Missing Data: Imputation techniques
   - Outlier Detection: Boxplots, Z-scores, Interquartile range (IQR)
   - Feature Engineering: Scaling, binning, and encoding

10. **Project: Subscriber Churn**
    - Analyzing customer churn data using Power BI
    - Building visualizations to show churn patterns
    - Creating DAX measures to track KPIs
    - Implementing time intelligence functions for trend analysis

## Learning Outcomes
By the end of this section, you will:
- Understand the components and architecture of Power BI.
- Connect to various data sources and transform data using Power Query.
- Build interactive visualizations and dashboards.
- Write DAX expressions to perform calculations and aggregations.
- Implement time intelligence functions for data analysis.
- Create KPI visualizations and conduct exploratory data analysis.
- Collaborate and share reports using Power BI Service.

## Resources
- **Download Power BI Desktop**: [Official Download Link](https://powerbi.microsoft.com/en-us/downloads/)
- **Power BI Documentation**: [Microsoft Docs](https://docs.microsoft.com/en-us/power-bi/)
- **Power BI Guided Learning**: [Microsoft Learning Path](https://docs.microsoft.com/en-us/power-bi/guided-learning/)
- **Power BI YouTube Playlist**: [Official Tutorials](https://www.youtube.com/playlist?list=PL1N57mwBHtN0JFoKSR0n-tBkUJHeMP2cP)
- **Power BI Blogs**: [Latest Updates](https://powerbi.microsoft.com/en-us/blog/)

## Code Examples

### Connecting to a Data Source
```python
# Example using Python to connect to Power BI data model
import pyodbc

conn = pyodbc.connect("DSN=PowerBI Data Source;")
cursor = conn.cursor()
cursor.execute("SELECT * FROM SalesData")
for row in cursor.fetchall():
    print(row)
conn.close()
```

### Basic DAX Expression
```DAX
TotalSales = SUM('Sales'[OrderAmount])
```

### Calculated Column
```DAX
Tenure_Months = Churn[Tenure] * 12
```

### Time Intelligence - Year-to-Date Sales
```DAX
YTD_Sales = TOTALYTD(SUM('Sales'[OrderAmount]), 'Date'[Date])
```

### Creating a KPI Visualization
```DAX
KPI_Sales = CALCULATE(SUM('Sales'[OrderAmount]), 'Sales'[Category] = "Beverages")
```

## Next Steps
Proceed to the next section: [Section 07 - Tableau](./Section%2007%20-%20Tableau) (link to the next section).