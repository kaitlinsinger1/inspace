#### ACS Data Settings -- Inspace ####

##set up data pull specs:
acs_columns_inspace<-read.csv('Inspace/ACSColumns_inspace.csv') %>% dplyr::select(-X)
acs_columns_inspace$acs_variable_name_to_interpolate_by_sum_boolean_mapping<-acs_columns_inspace$interpolation
acs_varnames <- acs_columns_inspace$acs_col
#overwrite current ACSColumns.csv file
write.csv(acs_columns_inspace, 'ACMT/ACSColumns.csv')
  
##create 'count' versions of each variable name and 'proportion' versions for each #ACS variable where applicable
acs_count_names<-paste(acs_columns_inspace$var_name, "count", sep="_")
if (length(acs_columns_inspace$var_name[acs_columns_inspace$universe_col != ""]) == 0) {   # prevent having something that is exactly "_proportion"
  acs_proportion_names <- character(0)
} else {
  acs_proportion_names <- paste(acs_columns_inspace$var_name[acs_columns_inspace$universe_col !=''], "proportion", sep="_")   # only non-universal variables have proportions
}
  
#Designate interpolation strategy for variables
acs_variable_name_to_interpolate_by_sum_boolean_mapping<-acs_columns_inspace$interpolation
names(acs_variable_name_to_interpolate_by_sum_boolean_mapping)<-acs_columns_inspace$acs_col

#Set the list of variable codes, the list of variable names, the radius, and the year for the data you want pulled
codes_of_acs_variables_to_get<-acs_columns_inspace$acs_col
names_of_variables_to_get<-c(acs_count_names, acs_proportion_names)

acs_vars<-names_of_variables_to_get

acs_years<-c(2015, 2016, 2017, 2018, 2019, 2020)
acs_selected_years<-c(2017)

acs_description<-'The American Community Survey (ACS) is a national survey that provides sociodemographic information. In the 5-year estimates, data is pooled across 5 years of surveying to minimize measurement error.
We have generated a list of ACS variables to be pulled for each participant in Inspace across three buffered areas (500m, 1000m, and 5000m). 
ACS variables will be pulled for 2017 (2013-2017 5-year ACS) as well as for the 5-year period centered around your initial year of enrollment.'
