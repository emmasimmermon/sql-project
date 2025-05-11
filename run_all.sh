#!/bin/bash
set -e

echo "🔁 Running all notebooks..."

for nb in \
  notebook/Data-Cleaning/All_Product_API_Data_Cleaning.ipynb \
  notebook/Data-Cleaning/Ulta_API_Data_Cleaning.ipynb \
  notebook/Data-Loading/RDS_Setup_and_Load_Data.ipynb \
  notebook/Data-Retrieval/All_Web_SQL_Analysis.ipynb \
  notebook/Data-Retrieval/Ulta_Web_Scrape_SQL_Analysis.ipynb
do
  echo "📘 Executing: $nb"
  jupyter nbconvert --to notebook --execute --inplace --ExecutePreprocessor.timeout=-1 "$nb"
done

echo "✅ All notebooks executed successfully!"





