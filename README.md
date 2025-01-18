# IT Incident Management Analysis  

This project focuses on building a data warehouse solution to analyze IT incident management. The goal is to streamline data collection, transformation, and visualization, providing actionable insights into incident trends, response times, and resolution efficiency.  

The solution integrates **SQL Server Management Studio (SSMS)** for data warehousing, **Pentaho Data Integration (PDI)** for ETL processes, and **Power BI** for visualization and reporting.  

---

## Key Features  

### 🏗️ Data Warehouse Design  
- Designed a **star schema** for efficient query performance and insightful reporting.  
- Fact tables store incident data, while dimension tables capture details such as time, users, teams, and incident categories.  

### 🔄 ETL Process with Pentaho  
- **Extraction**: Sourced raw incident data from multiple systems.  
- **Transformation**: Cleaned and enriched data (e.g., calculating average resolution times, categorizing incidents by priority).  
- **Loading**: Structured data loaded into SQL Server data warehouse for reporting.  

### 📊 Interactive Dashboards in Power BI  
- Created dashboards with dynamic visualizations, including:  
  - **Incident Trends**: Track incidents by category and priority over time.  
  - **SLA Compliance**: Monitor service level agreement adherence.  
  - **Team Performance**: Analyze average resolution times by team.  
  - **Monthly Volumes**: Visualize incident counts by month.  
- Drill-through functionality for in-depth analysis and decision-making.  

---

## Tools and Technologies  

- **SQL Server Management Studio (SSMS)**: Data warehouse creation and management.  
- **Pentaho Data Integration (PDI)**: ETL workflows for data extraction, transformation, and loading.  
- **Power BI**: Interactive dashboards and KPI visualization.  

---

## Workflow  

1. **Requirement Gathering**: Collaborated with stakeholders to define KPIs and business needs.  
2. **Data Modeling**: Designed and implemented a star schema optimized for analytics.  
3. **ETL Process**:  
   - Extracted data from source systems.  
   - Cleaned and standardized data (resolved null values, aggregated metrics).  
   - Loaded data into the SQL Server data warehouse.  
4. **Visualization**: Developed interactive Power BI dashboards for reporting and analysis.  

---

## Sample Dashboard  

_(ETL Job Success Screenshot)_  
![job_log2](https://github.com/user-attachments/assets/6a2b32ee-7b15-4944-973e-4d86ba82184b)

_(Below is the final Power BI report created for the IT Incident Management Analysis project. While the report is simple, the focus of this project was primarily on designing and executing an efficient ETL pipeline. The report was created to validate the ETL process and present the results logically and effectively. )_
![Screenshot 2024-06-07 171313](https://github.com/user-attachments/assets/93c9aa68-4e7e-4e67-b942-849100f0cbac)


---

## Key Outcomes  

- **Automation**: Streamlined manual reporting through automated pipelines.  
- **Proactive Decision-Making**: Enabled real-time incident tracking and analysis.  
- **Improved Insights**: Identified bottlenecks in resolution times and SLA compliance.  

---

## How to Run  

1. **Set Up SQL Server**: Import SQL scripts to create the data warehouse schema and populate tables.  
2. **Configure Pentaho**: Use the provided ETL workflows to load data into the warehouse.  
3. **Load Power BI File**: Open the `.pbix` file in Power BI Desktop, update data source credentials, and view dashboards.  

---

## Future Enhancements  

- Add new data sources for deeper insights.  
- Implement predictive analytics to forecast incident trends.  
- Automate reporting through scheduled email notifications.  

---

## Contact  

**Author**: Sumit Chhetri  

Feel free to contribute, suggest improvements, or ask questions!  

---
