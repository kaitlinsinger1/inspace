## InSpace Information Page

This page houses all of the instructions you will need for using the ACMT to pull measures for your dataset. 

As an InSpace partner, you will be following our detailed instructions to gather data on the social and built environment surrounding each of your participant's residential address. Once data has been gathered, you will share with us the de-identified data, allowing us to examine how built environment factors modify the effect of physical activity interventions. 

For this study, partners will be pulling data from the following datasets: 
   -  [The American Community Survey](https://www.census.gov/programs-surveys/acs/about.html)
   -  [Walkability Index](https://www.epa.gov/smartgrowth/smart-location-mapping#walkability)
   -  [CDC PLACES data](https://www.cdc.gov/places/index.html)
   -  [National Land Cover Database](https://www.usgs.gov/centers/eros/science/national-land-cover-database)
   -  [Modified Retail Food Environment Index (mRFEI)](https://www.cdc.gov/obesity/downloads/census-tract-level-state-maps-mrfei_TAG508.pdf)
   -  [Trust for Public Lands' ParkServe](https://www.tpl.org/parkserve)
   -  [Applied Geographic Solutions CrimeRisk Data](https://appliedgeographic.com/crimerisk/)
   -  [Sidewalk Score](https://journals.sagepub.com/doi/10.1177/0033354920968799)
   -  [Regional Price Parity](https://www.bea.gov/data/prices-inflation/regional-price-parities-state-and-metro-area)
   -  [Gentrification Measure](https://drexel.edu/uhc/resources/briefs/Measure-of-Gentrification-for-Use-in-Longitudinal-Public-Health-Studies-in-the-US/)


### Step 1: [Installing the Docker & Setting up the ACMT](https://aybloom.github.io/inspace/Inspace/ACMT-setup-Inspace.html)

The first step in using the ACMT is to install the Docker, which creates a container on your local destop and and allows the ACMT to gather measures for your data without sending our data outside of your local machine. Once you install Docker, you will download the ACMT source code and install it. 

   * *Instructions for installing the Docker, downloading the ACMT source code can be found [HERE](https://aybloom.github.io/inspace/Inspace/ACMT-setup-Inspace.html)*
      * *Follow [THIS LINK](https://youtu.be/hHCyvDOB3TY) for a video guide to setting up the ACMT*

### Step 2: Download the Inspace R code and upload into your R environment

Next you will need to download the R code that is specific to the Inspace project. 

   * [Click this link](https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/aybloom/inspace/tree/Inspace/docs/Inspace) to download a zipped file of the R code for Inspace. If you are prevented on downloading files due to a firewall, email Amy and she can send you a zipped folder of the code via email. 

### Step 3: Open and run the R script to run the Inspace - ACMT Application

 Finally, you are ready to run the Inspace application in your Rstudio environment, which will guide you through the process of uploading your data, geocoding (if necessary), and pulling environmental measures. 
 
   * In Rstudio in your browser, you will open the 'Inspace - ACMT Shiny App.R' file located in your Inspace folder (this folder is created when you upload the Inspace code in Step 2). 
   * In the top right of the page of code, click the 'Run App' button (green play button). This will open the Application in a new window. 
   * Follow instructions in the application to upload your data (be sure to check formatting of your data prior to uploading). 
   * If geocoding is necessary, follow the application instructions for geocoding and checking your geocodes. 
   * Run each data pull, one by one to pull environmental measures. Your progress can be check on the 'Overall Progress' tab of the application.
   * All of your data pulls are saved in separate files in your Inspace > data_pull_measures folder in you Rstudio environment. 

### Support or Contact. 

If you run into any issues along the way, don't hesitate to reach out to [Amy](mailto:aybloom@uw.edu)
