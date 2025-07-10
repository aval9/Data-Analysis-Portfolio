# Hi!
My name is Agnese Valmaggia, and in this repository I share projects and track my progress in Data Analytics related topics.
In addition, I gathered some extra material to show my skills with alternative (music) programming tools like [Max MSP](https://cycling74.com/products/max).

## Table of content:
- **Python**: [Video game sales – Exploratory Data Analysis](VG_Sales.ipynb)
- **SQL** (in Python): [Chicago Socioeconomics Data - Introductory project](SQL_in_Python.ipynb)
- **Max**: turning a drumset into a melodic instrument with Sensory Percussion triggers and Flucoma applied to a [Max patch](Creazione_GH.maxpat)

---

## PYTHON: Video Game Sales – Exploratory Data Analysis

This project is a simple but complete exploratory data analysis (EDA) based on a dataset of global video game sales.  
The goal is to explore trends in the gaming industry, understand platform and genre distribution, and look into publisher performance over time.

### Dataset
- **Source**: [Kaggle – Video Game Sales Dataset](https://www.kaggle.com/datasets/gregorut/videogamesales)
- **Fields** include: `Rank`, `Name`, `Platform`, `Year`, `Genre`, `Publisher`, `Global_Sales`, `NA_Sales`, `EU_Sales`, `JP_Sales`, `Other_Sales`.
### Tools and Libraries
- Python (Jupyter Notebook)  
- Pandas  
- NumPy  
- Seaborn  
- Matplotlib  
### Questions Explored
- What is the overall trend in global video game sales over time?
- Which genres and platforms dominate the market?
- How do sales differ across regions?
- How has Nintendo performed compared to other publishers?
### Visualizations
- Line plot of global sales over the years  
- Bar plots of top genres and top platforms  
- Pie chart of Nintendo games by platform  
- Dual-axis plot comparing Nintendo vs global performance  
### Main Insights
- The global video game market peaked in 2008–2009, then slightly declined.  
- Action and Sports are the most popular genres overall.  
- Nintendo outperforms many other publishers, especially in Japan.  
- PlayStation dominates in global sales, but Nintendo has strong regional leadership.
### What I Learned
- How to clean and analyze a real-world dataset  
- How to create meaningful visualizations with Python  
- How to identify trends and generate insights  
- How to present technical work in a clear, structured way
### Future Improvements
- Add interactive dashboards using Power BI  
- Include regional sales heatmaps  
- Expand to predictive analysis with regression or clustering

---
## SQL: Chicago Socioeconomic data – Introductory project

A small personal project to practice using **SQL within Python**, focusing on **SQLite**. It includes basic SQL queries executed on a local in-memory database created and managed through Python.

> ⚠️ This is an **introductory project** – I plan to expand it in the future using **MySQL Workbench** and more complex, real-world scenarios.

### Contents:
- Creation of an in-memory SQLite database
- Insertion of sample data
- Execution of basic SQL queries: `SELECT`, `WHERE`, `ORDER BY`
- Python-based data manipulation and result visualization

### Technologies Used
- Python 3.x
- SQLite (via `sqlite3`)
- Jupyter Notebook

---

## MAX: triggering samples through Flucoma

### What is Max?
- Max is a powerful and extremely versatile tool to manipulate and create your own sounds. It is a visual programming language and it works with objects.
### The patch
- In this patch I built a system to use a drumset as a melodic instrument: I placed triggers on the drums and they work like piezos, detecting sounds and communicating with Max. There, every input triggers a specific sound that I previously selected and programmed. Having two triggers on two different surfaces allows me to move around a precise harmonic strucure.
### Result
- Because you need to have the software to be able to see it in action, [here](https://youtu.be/dij0Q8sW4ug) is an example of how the patch works.

---

### Author

**Agnese Valmaggia** 

[GitHub Profile](https://github.com/aval9/Data-Analysis-Portfolio)  
[LinkedIn](https://www.linkedin.com/in/agnesevalmaggia) 

