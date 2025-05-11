#  🧠 Ethical Brand Strategy & Guest Insights at Ulta: A SQL Analytics Portfolio


---

## 📦 Tech Stack

- **Languages & Tools**
  - Python
  - SQL
  - dbt
- **Infrastructure**
  - AWS RDS PostgreSQL
- **Automation & CI/CD**
  - GitHub Actions
- **Visualization**
  - Looker Studio

---

## 🎯 Project Objective

**Who are we helping?**  
Retail analytics teams, beauty brand planners, and marketing strategists at platforms like Ulta who want to understand how ethical brand attributes (e.g., “vegan,” “Black-owned”) influence consumer engagement and product performance.

**What problem are we solving?**  
As ethical values become more central to consumer behavior, companies need data-driven insight into how brand ethics impact product reviews, buyer trust, and guest sentiment.

**How are we solving it?**  
By building a reproducible ETL pipeline that collects, processes, and analyzes customer reviews and brand metadata. Results are visualized in dashboards using Looker Studio.

---

## 💼 Job Description

This project aligns with the **Guest Data Analyst** role at **Ulta Beauty**, which focuses on leveraging customer data to enhance loyalty, personalize product insights, and improve merchandising decisions.

**Key responsibilities covered in this project:**
- SQL analysis of product reviews and guest behavior  
- Evaluation of ethical brand distribution across major retailers  
- Dashboard development for product and marketing strategy teams  
- Automation of data ingestion and transformation workflows  


📄 [Job_Description.pdf](proposal/Job_Description.pdf)

---

## 🔍 Data

### Sources

- API: Ethical product data (e.g., vegan, black-owned flags)
- Web scrape: Ulta customer reviews

---

## 📓 Notebooks & Scripts

| File                                  | Purpose                                             |
| ------------------------------------- | --------------------------------------------------- |
| `All_Product_API_Data_Cleaning.ipynb` | Cleans product-level ethical attribute data         |
| `Ulta_API_Data_Cleaning.ipynb`        | Cleans scraped customer reviews                     |
| `RDS_Setup_and_Load_Data.ipynb`       | Uploads cleaned data to AWS RDS                     |
| `All_Web_SQL_Analysis.ipynb`          | Performs SQL analysis on all product data           |
| `Ulta_Web_Scrape_SQL_Analysis.ipynb`  | Review-based SQL analysis                           |
| `retrieve_avg_review_votes.py`        | Joins and exports vegan vs non-vegan review metrics |

---

## 🚀 GitHub Actions Workflow

This project uses [GitHub Actions](https://github.com/features/actions) to automate the entire data pipeline.

### Workflow: `full_pipeline.yml`

**Runs:**

1. Data cleaning notebooks
2. RDS loading notebook
3. Data retrieval SQL notebooks

```yaml
on:
  workflow_dispatch:
```

You can manually trigger the pipeline from the **Actions** tab in GitHub.

---

## 🛠 How to Run Locally

### 1. Create and activate virtual environment

```bash
python3 -m venv venv
source venv/bin/activate
```

### 2. Install requirements

```bash
pip install -r requirements.txt
```

### 3. Run notebooks in order

```bash
jupyter nbconvert --to notebook --execute notebook/Data-Cleaning/All_Product_API_Data_Cleaning.ipynb
jupyter nbconvert --to notebook --execute notebook/Data-Cleaning/Ulta_API_Data_Cleaning.ipynb
jupyter nbconvert --to notebook --execute notebook/Data-Loading/RDS_Setup_and_Load_Data.ipynb
jupyter nbconvert --to notebook --execute notebook/Data-Retrieval/All_Web_SQL_Analysis.ipynb
jupyter nbconvert --to notebook --execute notebook/Data-Retrieval/Ulta_Web_Scrape_SQL_Analysis.ipynb
```

---

OR

### 3. Run the .bat file

'''
./run_all.bat
'''

## 🔮 Future Improvements

- Add NLP sentiment analysis on `review_text` using HuggingFace or TextBlob
- Expand data sources to include Sephora or Amazon Beauty reviews
- Integrate Looker Studio API to automate dashboard refreshes

---
