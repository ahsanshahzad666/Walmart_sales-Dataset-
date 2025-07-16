<h1>Walmart Data Pipeline Project: From Kaggle API to SQL Insights with Python </h1>
<!-- <hr style="border: 0.5px solid #999;">
 -->

<p align="center">
  <img alt="walmart_project-piplelines" src="https://github.com/user-attachments/assets/1bd7d129-594b-4c8e-8b93-e2edb555ff83"  width="1598" height="753" style="border: 2px solid #ccc; border-radius: 10px;" width="700"/>
</p>
<P> This project is an end-to-end data analysis solution designed to extract critical business insights from Walmart sales data. We utilize Python for data processing and analysis, SQL for advanced querying, and structured problem-solving techniques to solve key business questions. The project is ideal for data analysts looking to develop skills in data manipulation, SQL querying, and data pipeline creation.
</P>
<hr style="border: 0.5px solid #bbb;">

<h1> Project Steps </h1>

<h3 style="border-bottom:none;"> 1. Set Up the Environment </h3>
  <li>Tools Used: Visual Studio Code (VS Code), Python, SQL (MySQL)</li>
  <li>Goal: Create a structured workspace within VS Code and organize project folders for smooth development and data handling.</li>

<h3 style="border-bottom:none;"> 2. Set Up Kaggle API</h3>
  <li>API Setup: Obtain your Kaggle API token from Kaggle by navigating the profile settings and downloading the JSON file.</li>
  <li>Use the command kaggle datasets download -d <dataset-path> to pull datasets directly into your project.</li>

<h3 style="border-bottom:none; margin-bottom: 5px;">3. Download Walmart Sales Data</h3>
  <li><strong>Data Source:</strong> Use the Kaggle API to download the Walmart sales datasets from Kaggle.</li>
  <li><strong>Dataset Link:</strong> Walmart Sales Dataset</li>
  <li><strong>Storage:</strong> Save the data in the <code>data/</code> folder for easy reference and access.</li>

<h3 style="border-bottom:none; margin-bottom: 5px;">4. Install Required Libraries and Load Data</h3>
  <li ><strong>Libraries:</strong> Install necessary Python libraries using the command below.</li>

<pre><code style = "margin-bottom: 5px;" >pip install pandas numpy sqlalchemy mysql-connector-python psycopg2</code></pre>
