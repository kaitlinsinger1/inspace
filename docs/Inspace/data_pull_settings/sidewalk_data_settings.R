#### sidewalk score Data Settings -- Inspace ####
external_data_name_to_info_list <- list(
  sidewalk=external_data_presets_sidewalk
)

sidewalk_vars <-names(sidewalk_variable_name_to_interpolate_by_sum_boolean_mapping) 
names_of_variables_to_get<-sidewalk_vars
first_var<-sidewalk_vars[1]

sidewalk_years<-c(2017)
sidewalk_selected_years<-c(2017)

sidewalk_description<-'T Quynh Nguyen at University of Maryland has developed a national sidewalk presence dataset by applying machine learning to Google Street View images to produce tract-level estimates of sidewalk presence/panoramic image by tract. Measures included percent of images for a given census tract that has crosswalks, the percent of images for a given census tract with a sidewalk We will use area-weighted interpolation to construct buffer specific measures of sidewalk presence. .'


sidewalk_zscores<-function(dataset_sidewalk){
dataset_sidewalk<-dataset_sidewalk%>%
  mutate(prop_sidewalk = total_sidewalk/total_num, 
         prop_crosswalk=total_crosswalk/total_num)

#calculate mean prop_sidewalk and mean prop_crosswalk
mean.sidewalk=mean(dataset_sidewalk$prop_sidewalk)
mean.crosswalk=mean(dataset_sidewalk$prop_crosswalk)
sd.sidewalk=sd(dataset_sidewalk$prop_sidewalk)
sd.crosswalk=sd(dataset_sidewalk$prop_crosswalk)

#calculate sidewalk and crosswalk z-scores
dataset_sidewalk<- dataset_sidewalk%>%
  mutate(sidewalk_z=(prop_sidewalk-mean.sidewalk)/sd.sidewalk, 
         crosswalk_z=(prop_crosswalk-mean.crosswalk)/sd.crosswalk)

}