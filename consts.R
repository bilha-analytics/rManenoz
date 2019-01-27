#source("utilz.R")

vPROJECT_RESEARCHERS = c("Juliet Ouma", "Juliet Wanjiku", "Lilian Oporo", "Maxwell Lubeka")


zFlagIssues <- function(db){
  # Flag errnoenous dates
  df[["ERR__Date_Field"]] <- ifelse( is.na( df$`Date of interview (dd/mm/yy)` ), 1, 0 ) 
  df[["ERR__IncomeSource1"]] <- ifelse( is.na( df$`Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 1 - Text` ), 1, 0 ) 
  
  df[["ERR__IncomeSource1_AgricPurch"]] <- ifelse( ((is.na( df$`Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 1 - Text` ) && 
                                                       !is.na( df$`Did you ever purchase Agrics inputs/packages for this first income source?`)) || 
                                                      ( !is.na( df$`Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 1 - Text` ) && 
                                                          is.na( df$`Did you ever purchase Agrics inputs/packages for this first income source?`)) )
                                                   , 1, 0 ) 
  
  df[["ERR__IncomeSource2_AgricPurch"]] <- ifelse( ((is.na( df$`Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 2 - Text` ) && 
                                                       !is.na( df$`Did you ever purchase Agrics inputs/packages for this second income source?`)) || 
                                                      ( !is.na( df$`Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 2 - Text` ) && 
                                                          is.na( df$`Did you ever purchase Agrics inputs/packages for this second income source?`)) )
                                                   , 1, 0 ) 
  
  df[["ERR__IncomeSource3_AgricPurch"]] <- ifelse( ((is.na( df$`Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 3 - Text` ) && 
                                                       !is.na( df$`Did you ever purchase Agrics inputs/packages for this third income source?`)) || 
                                                      ( !is.na( df$`Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 3 - Text` ) && 
                                                          is.na( df$`Did you ever purchase Agrics inputs/packages for this third income source?`)) )
                                                   , 1, 0 ) 
  
  df[["ERR__IncomeSource4_AgricPurch"]] <- ifelse( ((is.na( df$`Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 4 - Text` ) && 
                                                       !is.na( df$`Did you ever purchase Agrics inputs/packages for this fourth income source?`)) || 
                                                      ( !is.na( df$`Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 4 - Text` ) && 
                                                          is.na( df$`Did you ever purchase Agrics inputs/packages for this fourth income source?`)) )
                                                   , 1, 0 ) 
  
  
  df[["ERR__CreditOtherSellers"]] <- ifelse( ((is.na( df$`Have you purchased inputs on credit from other sellers in the past?` ) && 
                                                 !is.na( df$`Where did you buy them?`)) || 
                                                ( !is.na( df$`Have you purchased inputs on credit from other sellers in the past?` ) && 
                                                    is.na( df$`Where did you buy them?`)) )
                                             , 1, 0 ) 
  
  df[["ERR__Challenges"]] <- ifelse( ((is.na( df$`Have you experienced challenges so far with Agrics?` ) && 
                                         !is.na( df$`Has the challenge been resolved?`)) || 
                                        ( !is.na( df$`Have you experienced challenges so far with Agrics?` ) && 
                                            is.na( df$`Has the challenge been resolved?`)) )
                                     , 1, 0 ) 
  
  df[["ERR__Age"]] <- ifelse( !is.numeric(df$`Would you mind sharing your age with me? (number only)`), 1, 
                            ifelse( (df$`Would you mind sharing your age with me? (number only)` < 18 &&
                                  df$`Would you mind sharing your age with me? (number only)` > 60)
                                  , 1, 0) )
 return(df) 
}

zSummarizeIssues <- function(db){

  return( 
    pander(
      df %>% select( starts_with("ERR")) %>% summarise_all(list(prop_with_errors=mean)) %>% round(.,3),  #%>% zToPercent,
      caption = "Issues So Far")
  )
}