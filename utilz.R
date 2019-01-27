######
##
##
##
##
######

source( "env_setup.R")

####
## OBJ: Consistent df type/object 
## Things to do: col names, date fields, 
## Do at-src as need be: spread/gather 
#####
loadRawDataFrame <- function( fname_in_proj_dir ){
  d <- as_tibble( rio::import(  here::here( "data_raw", fname_in_proj_dir) ) )
  return( d )
}


#####
## Anonymize
##
##
#####
anonSingleColumn <- function(db, dcol){
  db %>% mutate(
    !!dcol := map(db[dcol], anonymize)
  )
  
  print( head(db[1:5]) )
  return( db)
}
anonColumns <- function(db, ls_cols){
  
  return(db)
}



####
## Sample structure details 
##
##
##
#####
describeSampleStucture <- function( db, ls_groupers){
  
}



dirty.Wordcloud.it <- function(wcol ){
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

