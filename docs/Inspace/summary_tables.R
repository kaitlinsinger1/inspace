## Pull all summary tables ####
source('~/workspace/Inspace/data_pull_settings/shinyapp-functions.R')


## create data pull summaries folder if it doesn't exist: 
if(dir.exists('~/workspace/Inspace/data_pull_summaries')==FALSE){
  dir.create('~/workspace/Inspace/data_pull_summaries')
}

# ACS summary tables ####
tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_acs.csv')%>%dplyr::select(id, radius, year, everything())%>%
            dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_summary(.), '~/workspace/Inspace/data_pull_summaries/acs_summary.csv')
  },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages


tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_acs.csv')%>%dplyr::select(id, radius, year, everything())%>%
            dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_missingness(.), '~/workspace/Inspace/data_pull_summaries/acs_missingness.csv')
  },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages

# CDC Places summary table
tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_cdc.csv')%>%dplyr::select(id, radius, year, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_summary(.), '~/workspace/Inspace/data_pull_summaries/cdc_summary.csv')
  },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages

tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_cdc.csv')%>%dplyr::select(id, radius, year, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_missingness(.), '~/workspace/Inspace/data_pull_summaries/cdc_missingness.csv')
  },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
# Walk summary tables
  
  tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_walk.csv')%>%dplyr::select(id, radius, year, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_summary(.), '~/workspace/Inspace/data_pull_summaries/walk_summary.csv')
  },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
  tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_walk.csv')%>%dplyr::select(id, radius, year, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_missingness(.), '~/workspace/Inspace/data_pull_summaries/walk_missingness.csv')
  },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
  
  
#MRFEI summary tables
  tryCatch({ write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_mrfei.csv')%>%dplyr::select(id, radius, year, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_summary(.), '~/workspace/Inspace/data_pull_summaries/mrfei_summary.csv')
  },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
    tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_mrfei.csv')%>%dplyr::select(id, radius, year, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_missingness(.), '~/workspace/Inspace/data_pull_summaries/mrfei_missingness.csv')
    },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
  
# Parks summary tables
  tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_parks.csv')%>%dplyr::select(id, radius, year, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_summary(.), '~/workspace/Inspace/data_pull_summaries/parks_summary.csv')
  },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
    tryCatch({ write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_parks.csv')%>%dplyr::select(id, radius, year, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_missingness(.), '~/workspace/Inspace/data_pull_summaries/parks_missingness.csv')
    },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
  
# Crimerisk summary tables
  tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_crimerisk.csv')%>%dplyr::select(id, radius, year, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_summary(.), '~/workspace/Inspace/data_pull_summaries/crimerisk_summary.csv')
  },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
    tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_crimerisk.csv')%>%dplyr::select(id, radius, year, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_missingness(.), '~/workspace/Inspace/data_pull_summaries/crimerisk_missingness.csv')
    },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
  

# Sidewalk summary tables
  tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_sidewalk.csv')%>%dplyr::select(id, radius, year, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_summary(.), '~/workspace/Inspace/data_pull_summaries/sidewalk_summary.csv')
  },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
  tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_sidewalk.csv')%>%dplyr::select(id, radius, year, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_missingness(.), '~/workspace/Inspace/data_pull_summaries/sidewalk_missingness.csv')
  },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
  
# RPP summary tables
  tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_rpp.csv')%>%dplyr::select(id, year, everything(), -GeoName)%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%mutate(radius='')%>%table_summary(.), '~/workspace/Inspace/data_pull_summaries/rpp_summary.csv')
  },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
    tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_rpp.csv')%>%dplyr::select(id, year, everything(), -GeoName)%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%mutate(radius='') %>%table_missingness(.), '~/workspace/Inspace/data_pull_summaries/rpp_missingness.csv')
    },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
  
# Gentrification summary tables
  tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_gentrification.csv')%>%dplyr::select(id, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%mutate(year='2000 & 2010', radius='') %>%table_summary(.), '~/workspace/Inspace/data_pull_summaries/gentrification_summary.csv')
  },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
    tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_gentrification.csv')%>%dplyr::select(id, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%mutate(year='2000 & 2010', radius='') %>%table_missingness(.), '~/workspace/Inspace/data_pull_summaries/gentrification_missingness.csv')
    },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
  
# NLCD summary tables
  write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_nlcd.csv')%>%dplyr::select(id, radius, year, everything())%>%
              mutate_all(round, digits=3)%>%table_summary(.), '~/workspace/Inspace/data_pull_summaries/nlcd_summary.csv')
  write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_nlcd.csv')%>%dplyr::select(id, radius, year, everything())%>%
              mutate_all(round, digits=3)%>%table_missingness(.), '~/workspace/Inspace/data_pull_summaries/nlcd_missingness.csv')

# Park summary tables
  tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_parks.csv')%>%dplyr::select(id, radius, year, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_summary(.), '~/workspace/Inspace/data_pull_summaries/parks_summary.csv')
  },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
  tryCatch({write.csv(read.csv('~/workspace/Inspace/data_pull_measures/dataset_parks.csv')%>%dplyr::select(id, radius, year, everything())%>%
              dplyr::select(-X)%>%mutate_all(round, digits=3)%>%table_missingness(.), '~/workspace/Inspace/data_pull_summaries/parks_missingness.csv')
  },error=function(e){cat("ERROR :", conditionMessage(e), "\n")})#this will print any error messages
  
### Create pdf of summary tables
  create_report_function<-function(filepath_summary, filepath_missingness){
    if(file.exists(filepath_summary)){
      dd1 <- ggplot() + annotation_custom(tableGrob(read.csv(filepath_summary), 
                                                    theme=ttheme_default(base_size=8))) + 
        labs(title = paste0(sub(".*data_pull_summaries/", "", filepath_summary), ': Measure values'))
      dd2 <- ggplot() + annotation_custom(tableGrob(read.csv(filepath_missingness), 
                                                    theme=ttheme_default(base_size=5))) + 
        labs(title = paste0(sub(".*data_pull_summaries/", "", filepath_missingness), ': Missingness & count'))
      grid.arrange(dd1, dd2, nrow=2, 
                   heights=c(10, 3)
                   #layout_matrix=rbind(c(NA), c(1), c(2))
                   #padding=1, newpage = T)
      )
    }
    else{
      dd1 <- ggplot() + annotation_custom(tableGrob(data.frame(Status='data pull not complete'))) + 
        labs(title = paste0(sub(".*data_pull_summaries/", "", filepath_summary), ': Measure values'))
      
      dd2 <- ggplot() + annotation_custom(tableGrob(data.frame(Status='data pull not complete'))) + 
        labs(title = paste0(sub(".*data_pull_summaries/", "", filepath_missingness), ': Missingness & count'))
      
      grid.arrange(dd1, dd2, nrow = 2)
    }
  }
  
    pdf('~/workspace/Inspace/data_pull_summaries/data_summary.pdf', paper='legal')
    
    create_report_function('~/workspace/Inspace/data_pull_summaries/acs_summary.csv', '~/workspace/Inspace/data_pull_summaries/acs_missingness.csv')
    create_report_function('~/workspace/Inspace/data_pull_summaries/walk_summary.csv', '~/workspace/Inspace/data_pull_summaries/walk_missingness.csv')
    create_report_function('~/workspace/Inspace/data_pull_summaries/cdc_summary.csv', '~/workspace/Inspace/data_pull_summaries/cdc_missingness.csv')
    create_report_function('~/workspace/Inspace/data_pull_summaries/nlcd_summary.csv', '~/workspace/Inspace/data_pull_summaries/nlcd_missingness.csv')
    create_report_function('~/workspace/Inspace/data_pull_summaries/mrfei_summary.csv', '~/workspace/Inspace/data_pull_summaries/mrfei_missingness.csv')
    create_report_function('~/workspace/Inspace/data_pull_summaries/parks_summary.csv', '~/workspace/Inspace/data_pull_summaries/parks_missingness.csv')
    create_report_function('~/workspace/Inspace/data_pull_summaries/crimerisk_summary.csv', '~/workspace/Inspace/data_pull_summaries/crimerisk_missingness.csv')
    create_report_function('~/workspace/Inspace/data_pull_summaries/sidewalk_summary.csv', '~/workspace/Inspace/data_pull_summaries/sidewalk_missingness.csv')
    create_report_function('~/workspace/Inspace/data_pull_summaries/rpp_summary.csv', '~/workspace/Inspace/data_pull_summaries/rpp_missingness.csv')
    create_report_function('~/workspace/Inspace/data_pull_summaries/gentrification_summary.csv', '~/workspace/Inspace/data_pull_summaries/gentrification_missingness.csv')
    dev.off()

  
  