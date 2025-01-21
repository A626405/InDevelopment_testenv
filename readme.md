---
output:
  pdf_document: default
  html_document: default
---
<center>

<h1><b>Data Exploration & Visualization Project</b></h1>

<h2><b>Alexis Leclerc</b></h2>

<h2><b>FALL 2024 QMB6304 Final Project</b></h2>

<h2><b>12/18/2024 - 1/2025</b></h2>

<h2><a href="https://www.kaggle.com/datasets/casimian2000/aws-honeypot-attack-data">AWS Honeypot Dataset</a></h2>

</center>

<br>

<!-- Chapter 1: Functions Manual -->

<h1>

<center><b>Chapter 1. Functions Manual</b></center>

</h1>

<!-- Function Details -->

<ul>

<li><b>Function Script: 'lb' Loads Libraries w/ Multithreading. Checks for Missing Packages & Dependencies.</b></li>

<li><b>print(objects_to_keep[1])</b></li>

<li><b>na(df,col): Checks & Counts NA Values in a Column</b></li>

<li><b>lb(LibList): Installs & Loads Multiple Libraries w/ Multithreading</b></li>

</ul>

<b>Times (Will help identify DDoS Attacks by Clustering A set of Keys):</b>

<ul>

<li>Roughly The Same Year, Month, Day, Hour, Minute</li>

<li>Exactly The Same Host, Port, Protocol</li>

<li>If DOS Flood Exactly The Same SourceIP</li>

<li>If DDoS Amp/Ref Exactly The Same Port & Protocol</li>

</ul>

<br>

<!-- Chapter 2: Data Files Information Section -->

<center>

<h1><b>Chapter 2. Data Files</b></h1>

</center>

<ul>

<li><b>AWS_Honeypot_marx-geo.csv:</b> Renamed To Unprocessed_SourceData_Kaggle.csv.</li>

<li><b>GeoLite2-Country.mmdb:</b> Max Mind IPGeoLite2 IP Geolocation Database File.</li>

<li><b>GeoLite2-Country-Blocks-IPv4.csv:</b> Max Mind IPGeoLite2 IP Geolocation DB CSV File.</li>

<li>

<b>rawdata_step2.csv:</b> Raw Data w/ Minor Data Pre-Processing & Handling.

<ul>

<li>All Steps Implemented Periodic Garbage Collection & Removed Unnecessary Data From The Environment.</li>

<li>Used: gc() & rm().</li>

<li>Portions of Certain Steps Implemented Multi-Thread/Multi-Core Operations.</li>

</ul>

</li>

</ul>

<br>

<!-- Data File 4 Details Section -->

<h3>Details for Data File #4 (rawdata_step2.csv):</h3>

<ul>

<li><b>Split Datetime into Date & Time columns.</b></li>

<li><b>Split Date into Year, Month, Day columns.</b></li>

<li><b>All 'NA' Src & Dest. Ports ('NA' Port \<-\> ICMP Packets) Assigned Port Number '99999' To Replace NA Values.</b></li>

<li><b>Renamed/Replaced All "-" w/ "\_" For All Categories in the 'Host' Column.</b></li>

<li><b>Reordered the Tables Accordingly.</b></li>

<li><b>Exported The Processed Dataframe Table as a CSV File.</b></li>

</ul>

<br>

<!-- Creative Commons License Section -->

<center>

<h2>Creative Commons License</h2>

</center>

<h3>This work/project was produced & is licensed under a <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank">Creative Commons Attribution 4.0 International License</a>.</h3>

<br>

<!-- Sources Section -->

<center>

<h2>Sources</h2>

</center>

<h4>

MaxMind. (n.d.). GeoLite2 Free GeoIP data. Retrieved from <a href="https://dev.maxmind.com/geoip/geolite2-free-geolocation-data/">https://dev.maxmind.com/geoip/geolite2-free-geolocation-data/</a> <br>

Jacobs, J., & Rudis, B. (n.d.). AWS Honeypot dataset. Data Driven Security. Retrieved from <a href="https://datadrivensecurity.info/blog/pages/dds-dataset-collection.html">https://datadrivensecurity.info/blog/pages/dds-dataset-collection.html</a> <br>

CASIMIAN2000. (2020, November 12). AWS Honeypot attack data [Dataset]. Kaggle. Retrieved from <a href="https://www.kaggle.com/datasets/casimian2000/aws-honeypot-attack-data">https://www.kaggle.com/datasets/casimian2000/aws-honeypot-attack-data</a>

</h4>

<br>

---
title: "QMB6304_Final_Project_Fall_2024"
author: "Alexis Leclerc"
date: "2024-01-21"
description: "Data Exploration & Visualization Project for QMB6304"
subtitle: "AWS_Honeypot_DDoS_Network_Traffic_Dataset"
---
