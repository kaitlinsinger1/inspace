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


### Step 1: Installing the Docker & Setting up the ACMT

The first step in using the ACMT is to install the Docker, which creates a container on your local destop and and allows the ACMT to gather measures for your data without sending our data outside of your local machine. Once you install Docker, you will download the ACMT source code and install it. 

   * *Instructions for installing the Docker, downloading the ACMT source code can be found [HERE](https://aybloom.github.io/inspace/ACMT-setup-Inspace.html)*
      * *Follow [THIS LINK](https://youtu.be/hHCyvDOB3TY) for a video guide to setting up the ACMT*

   * *A zipped folder with all of the R files you will need for geocoding and pulling Inspace data can be downloaded [HERE](https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/aybloom/inspace/tree/main/docs/Inspace)*

### Step 2: Geocoding your dataset

If your addresses are not already gecoded to latitude and longitude, you can use the ACMT to do this step! 
   * *The ACMT Geocoder instructions are [here](https://aybloom.github.io/inspace/ACMT-geocoder.html)*
   *  *Follow [THIS LINK](https://youtu.be/VOisNBEsB8g) for a video guide to using the ACMT's geocoder*

### Step 3: Pull Measures from each dataset

Each of the 8 datastets from which measures are pulled has it's own code file. The pages with instructions for each dataset and the code are linked below for you to review. To use the code with the ACMT, follow these instructions: 

   1. If you haven't already done so, download a zipped folder with all of the R files [HERE](https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/aybloom/inspace/tree/main/docs/Inspace)
   2. Navigate to R in your browser, click the upload button in your files window, and upload the zipped Inspace folder that you just downloaded.
   3. Once the files are all uploaded, you should have a folder called ‘Inspace’ in your workspace in R, and in the Inspace folder is R code for each of the dataset. The HTML versions of each of these documents are also linked below.

To see the full list of dataset and variables that will be pulled from each dataset click [here](https://aybloom.github.io/inspace/InSPACE-Measures-list.html)

1. [American Community Survey Data Pull code](https://aybloom.github.io/inspace/ACS-Data-Pull.html)
   * [ACS Data Instructional Video](https://youtu.be/VBwaBNqpgj4)
3. [Walkability Index Data Pull code](https://aybloom.github.io/inspace/epa-walkability-data-pull.html)
   * [Walkability Instructional Video](https://youtu.be/n6jk7XErmUs_)
5. [CDC PLACES Data Pull code](https://aybloom.github.io/inspace/PLACES-data-pull.html)
   * [CDC PLACES Data Pull Instructional video](https://youtu.be/-agyvyfKztQ)
7. [National Land Cover Database Data Pull code](https://aybloom.github.io/inspace/NLCD-data-pull.html)
   * [NLCD Data Pull Instructional video](https://youtu.be/bVSwlG6aVI4)
9. [Modified Retail Food Environment Index Data Pull code](http://aybloom.github.io/inspace/mfrei-data-pull.html)
   * [mRFEI Data Pull Instructional Video](https://youtu.be/JFFjrwxrFBQ)
11. [Trust for Public Lands' ParkServe Data Pull code](http://aybloom.github.io/inspace/ParkScore-data-pull.html)
   * [ParkServe Data Pull Instructional Video](https://youtu.be/N1FdRQPKTxE)
13. [AGS Crime Risk Data Pull code](http://aybloom.github.io/inspace/CrimeRisk-data-pull.html)
14. [Sidewalk Score Data Pull code](http://aybloom.github.io/inspace/Sidewalk-View.html)

Each dataset will be separately saved. Once you have pulled the variables for each year, contact the InSpace team for instructions on sharing the de-identified data with the team. 

### Support or Contact. 

If you run into any issues along the way, don't hesitate to reach out to [Amy](mailto:aybloom@uw.edu)
