######
##
##
##
##
######

source( "env_setup.R")

#####
##
##
#####
zTrim <- function (x) gsub("^\\s+|\\s+$", "", x)
zToPercent <- function(x ){ return( paste( x*100, "%")) }



####
## OBJ: Consistent df type/object 
## Things to do: col names, date fields, strip spaces, convert to lowercase, 
## Do at-src as need be: spread/gather 
#####
zLoadRawDataFrame <- function( fname_in_proj_dir ){
  ## read file 
  df <- as_tibble( rio::import(  here::here( "data_raw", fname_in_proj_dir) ) )
  
  ## case to lower and trim
  df <- as_tibble(
    lapply( df, function(x){
      if( is.character(x) ) return( zTrim(tolower(x) ) )
      else return( zTrim(x) )
    })
  )
  
  ## replace null, n/a with NA character ::TODO recheck what they mean 
  df[ df == 'n/a'] <- NA
  df[ df == 'null'] <- NA
  
  return( df )
}


#####
## Anonymize
##
##
#####
zAnonSingleColumn <- function(db, dcol){
  #db <- db %>% mutate(
  #  !!dcol := anonymize( dcol[[1]] )
  #)
  
  db[dcol] = anonymize( dcol[[1]] ) 
  
  print( head(db[1:5]) )
  
  return( db)
}


zAnonColumns <- function(db, ls_cols){
  return( 
    ls_cols %>% 
    map( ~ as.data.frame(db) %>% 
           select(matches(.x)) %>%
           unlist %>% anonymize 
    ) %>%  
    set_names( paste("Anon.", ls_cols, sep="")  ) %>%
    bind_cols(df, .) %>% 
    select( -ls_cols )
  )
}



####
## Sample structure details 
##
##
##
#####
zDescribeSampleStucture <- function( db, ls_grouperz){
  c(
    ls_grouperz %>% map(
     ~ db %>% select( matches(.x)) %>% 
       table %>% addmargins
    )  %>% pander(., caption = paste("Frequencies (n) -", .x) ),
  
    ls_grouperz %>% map(
      ~ db %>% select( matches(.x)) %>% 
        table %>% prop.table(.) %>% round(., 3)*100 #%>% zToPercent
    ) %>% pander(., caption = paste("Proportions (%) -", .x) )
  )
}


#####
##
##
#####
zFormatDateCol <- function(db, ls_dcolz){
  with(db, 
       lapply(ls_dcolz, function(x){
      db[[x]] <<- as.Date( db[[x]], "%d/%m/%Y") 
    }) 
  )
  return( db )
}



zDirty.Wordcloud.it <- function(wcol ){
  allwords <- hunspell_parse( as.character(wcol ) )
  stems <- unlist( hunspell_stem( unlist(allwords)))
  words <- sort( table(stems), decreasing = TRUE) 
  
  ## now remove stop words 
  dw = as.data.frame( words )
  dw$stems = as.character( dw$stems)
  stops = dw$stems %in% stopwords::stopwords( source = 'stopwords-iso')
  fin_words = head( dw[ !stops, ], 300)
  
  
  ## plot word cloud
  names( fin_words ) <- c('word', 'count')
  fin_words$count <- (fin_words$count)^(2/3)
  
  wc <- wordcloud2( fin_words)
  
  
  return( wc )
  #return( fin_words )
}

