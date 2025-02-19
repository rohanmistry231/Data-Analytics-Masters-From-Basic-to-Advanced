# Section 07 - Tableau

## Overview
This section introduces **Tableau**, a leading data visualization tool widely used for business intelligence and analytics. The course covers Tableau from basics to advanced levels, focusing on data visualization, dashboard creation, and analytics using Tableau’s interactive and user-friendly interface.

## Topics Covered
1. **Introduction to Tableau**
   - Why Tableau? Key Benefits
   - Importance of Data Visualization
   - How Tableau simplifies complex data representation

2. **Tableau Architecture**
   - Tableau Components and Product Line (Desktop, Server, Online, Public)
   - Tableau Installation Guide
   - Data Sources and Connectivity Options

3. **Getting Started with Tableau**
   - Connecting to Various Data Sources
   - Understanding Tableau’s User Interface
   - Dimensions and Measures
   - Tableau’s "Show Me" Feature for Visualization Selection

4. **Working with Data in Tableau**
   - Relationships, Joins, and Unions
   - Data Blending vs Data Joining
   - Filters, Sorting, and Grouping Data
   - Cross-tabs (Pivot Tables) and Data Aggregation

5. **Tableau Visualizations**
   - Bar Charts, Line Charts, Pie Charts
   - Scatter Plots, Heat Maps, and Geographic Maps
   - Dual Axis Charts and Combo Charts
   - Dashboard and Storytelling with Tableau

6. **Advanced Tableau Functions**
   - Level of Detail (LOD) Expressions
   - Table Calculations and Quick Table Functions
   - Calculated Fields: String, Date, and Numeric Functions
   - Forecasting and Trend Analysis

7. **Analytics and Interactive Features**
   - Parameters and Dynamic Controls
   - Drill-Down and Hierarchies
   - Highlighting, Tooltips, and Custom Filters
   - Dashboards: Layout, Design, and Interactivity

8. **Dashboarding and Reporting**
   - Creating a Dashboard in Tableau
   - Best Practices for Dashboard Design
   - Sharing and Publishing Dashboards (Tableau Public, Server)

9. **Tableau for Business Intelligence**
   - Business Intelligence Process using Tableau
   - Exploratory Data Analysis (EDA) with Tableau
   - Case Study: Real-World Application of Tableau in Business Analytics

## Learning Outcomes
By the end of this section, you will:
- Understand the fundamentals of Tableau and its role in data visualization.
- Connect and manipulate data from different sources.
- Create interactive and insightful visualizations using Tableau’s built-in tools.
- Use filters, groups, and calculated fields to enhance data analysis.
- Build professional dashboards and reports for business intelligence.
- Implement advanced analytics using LOD expressions, forecasting, and trend analysis.

## Resources
- **Download Tableau**: [Official Download Link](https://www.tableau.com/products/desktop/download)
- **Tableau Documentation**: [Tableau Help](https://help.tableau.com/current/guides/en-us/guides.htm)
- **Tableau Learning**: [Tableau Learning Path](https://www.tableau.com/learn/training)
- **Tableau Community**: [Forum and Blogs](https://community.tableau.com/)
- **Tableau Public**: [Share Your Work](https://public.tableau.com/en-us/s/)

## Code Examples

### Connecting to a Data Source in Tableau
```python
# Example using Python to connect Tableau to a data source
import pandas as pd

df = pd.read_csv("sales_data.csv")  # Load CSV data
print(df.head())  # Preview first few rows
```

### Creating a Calculated Field in Tableau
```sql
# Example of a Calculated Field to Compute Profit Margin
Profit_Margin = SUM([Profit]) / SUM([Sales])
```

### Using Level of Detail (LOD) Expression
```sql
# LOD Expression to Calculate Total Sales per Customer
{ FIXED [Customer Name] : SUM([Sales]) }
```

### Creating a Dual-Axis Chart in Tableau
```sql
# Combining Sales and Profit on Dual-Axis
SUM([Sales]) / SUM([Profit])
```

## Next Steps
Proceed to the next section: [Section 08 - Predictive Analytics](../Section%2008%20-%20Predictive%20Analytics) (link to the next section).