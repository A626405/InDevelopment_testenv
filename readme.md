---
--- QMB6304_Final_Project_Fall_2024
--- AWS_Honeypot_DDoS_Network_Traffic_Dataset
---

<center>

<h1><b>Data Exploration & Visualization Project</b></h1>

<h2><b>Alexis Leclerc</b></h2>

<h2><b>FALL 2024 QMB6304 Final Project</b></h2>

<h2><b>12/18/2024 - 1//2025</b></h2>

<h2><a href="https://www.kaggle.com/datasets/casimian2000/aws-honeypot-attack-data">AWS Honeypot Dataset</a></h2>

</center>

<br>

<!-- Chatper Functions Usage & Manual -->

<h1>

<center><b>Chapter 1. Functions Manual</b></center>

</h1>

<!-- -->

-   <b>Function Script: 'lb' Loads Libraries w/ Multithreading. Checks for Missing Packages & Dependencies.</b>

-   <b>print(objects_to_keep[1])</b>

-   <b>na(df,col) Checks & Counts NA Values in a Column</b>

-   <b>lb(LibList) Installs & Loads Multiple Libraries w/ Multithreading</b>

    <b>Times (Will help identify DDoS Attacks by Clustering A set of Keys)</b>

-   <b>Keys: Roughly The Same Year, Month, Day, Hour, Minute</b>

-   <b>Exactly The Same Host, Port, Protocol</b>

-   <b>If Dos Flood Exactly The Same SourceIP</b>

-   <b>If DDOS Amp/Ref Exactly The Same Port & Protocol</b>

    <br>

    <!-- Chapter Data Files Information Section -->

<center>

<h1><b>Chapter 2. Data Files</b></h1>

</center>

<!-- -->

1.  **AWS_Honeypot_marx-geo.csv: Renamed To Unprocessed_SourceData_Kaggle.csv.**

2.  **GeoLite2-Country.mmdb: Max Mind IPGeoLite2 IP Geolocation Database File.**

3.  **GeoLite2-Country-Blocks-IPv4.csv: Max Mind IPGeoLite2 IP Geolocation DB CSV File.**

4.  **rawdata_step2.csv: Raw Data w/ Minor Data Pre-Processing & Handling.**

    -   ***All Steps Implemented Periodic Garbage Collection & Removed Unnecessary Data From The Environment.***

        -   ***Used: gc() & rm().***

            <!-- -->

    -   ***Portions of Certain Steps Implemented Multi-Thread/Multi-Core Operations.***

<br>

<!-- Section Data Files Information Section -->

### 1.#.# Details For Data File #4 (rawdata_step2.csv):

<!-- -->

-   <b>Split Datetime into Date & Time columns.</b>
-   <b>Split Date into Year, Month, Day columns.</b>
-   <b>All 'NA' Src & Dest. Ports ('NA' Port \<-\> ICMP Packets) Assigned Port Number '99999' To Replace NA Values.</b>
-   <b>Renamed/Replaced All "-" w/ "\_" For All Categories in the 'Host' Column.</b>
-   <b>Reordered the Tables Accordingly.</b>
-   <b>Exported The Processed Dataframe Table as a CSV File.</b>

<br>

<!-- Creative Commons License Section -->

<center>

<h2>Creative Commons License</h2>

<h3>This work/project was produced & is licensed under a <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank">Creative Commons Attribution 4.0 International License</a>.</h3>

<br>

<!-- Sources Section -->

<h2>Sources</h2>

</center>

<h4>

-   MaxMind. (n.d.). GeoLite2 Free GeoIP data. Retrieved from <https://dev.maxmind.com/geoip/geolite2-free-geolocation-data/>

.

-   Jacobs, J., & Rudis, B. (n.d.). AWS Honeypot dataset. Data Driven Security. Retrieved from <https://datadrivensecurity.info/blog/pages/dds-dataset-collection.html>

.

-   CASIMIAN2000. (2020, November 12). AWS Honeypot attack data [Dataset]. Kaggle. Retrieved from <https://www.kaggle.com/datasets/casimian2000/aws-honeypot-attack-data>

</h4>

<br>
