#### CRIMERISKData Settings -- Inspace ####

##set up data pull specs:
external_data_name_to_info_list <- list(crimerisk=external_data_presets_crimerisk)

crimerisk_vars <-names(crimerisk_variable_name_to_interpolate_by_sum_boolean_mapping) 
names_of_variables_to_get<-crimerisk_vars
first_var<-crimerisk_vars[1]

crimerisk_years<-c(2017)
crimerisk_selected_years<-c(2017)

crimerisk_description<-'Applied Geographic Systems publishes a block-group level dataset of ‘crime risk’. 
This pulls from the FBI’s uniform crime reports and 16000 local law enforcement jurisdictions. 
We will use area-weighted interpolation of block group-level estimates to construct buffer-specific estimates of the following measures of reported crime:'


