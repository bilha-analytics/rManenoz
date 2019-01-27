######
##
##
##
##
######

source( "utilz.R")
source( "consts.R")

getLibaries()

loadLibraries()



## read data file 
df <- as_tibble( rio::import(  here::here( "data_raw", "agrics_raw.xlsx") ) )

df <- zLoadRawDataFrame( "agrics_raw.xlsx" )

## glimpse it 
names( df )
glimpse( df )
head( df )


dfc = mtcars
str(dfc)
head(dfc)
glimpse(dfc)
tibble( dfc )


#dfc <- set_names(dfc, c()) #dfc %>% set_names( map_chr( df, "Researcher name") )
#str(dfc)
#head(dfc)

purrr::map( dfc, 'mpg')
map_int( dfc$mpg, length)

pander::pandoc.table( summary(dfc) ) 
pander::pandoc.table( describe(dfc$mpg) ) 
describe(dfc$mpg) 
nrow(dfc)
complete.cases(( dfc ))
tibble(dfc)
glimpse(dfc)

dfc <- dfc %>% mutate(
  some.nam = map_chr( cyl, ~ paste("Nam_Cyl", .x, collapse = "_")),
  some.cal = map2_dbl( mpg, gear, ~ sum(.x, .y))
)
head(dfc)

dfc2 <- as_tibble( mtcars )
head(dfc2)
glimpse(dfc2)
pander::pandoc.table( summary(dfc2) ) 
transpose( head(dfc2))


## Example 60D data 
pander::pandoc.table( summary(df) ) 
glimpse( df)
View( sample_n(df, 10) )
#View( head(df, 4) )

nrow( df )
nrow( na.omit(df))
complete.cases(df)
glimpse(df)
names(df)


pander::pandoc.table( summary(df[c(4,16)]) ) 
pander::pandoc.table( by(df[c(4,16)], df$`Researcher name`, summary) ) 
by(df[c(4,16)], df$`Researcher name`, summary)
#from summarytools 
pander::pandoc.table( descr(df[c(4,16)]) )
## winner!! for qual reasons doesn't play well with pander/kable, though <<< may be will look nice in html context <, NOPE!!!! not working in HTML
## summary for quant 
pander::pandoc.table( dfSummary (df[c(4,16)]) )
pander::pandoc.table( as.data.frame(dfSummary (df[c(4,16)]) ) )
kable( as.data.frame(dfSummary (df[c(4,16)]) ) )
by(df[c(4,16)], df$`Researcher name`, dfSummary) 
dfSummary (df) 

hunspell( "The quick bros fox jumped over the llazy dogss")

hunspell_suggest( hunspell( "The quick bros fox jumped over the llazy dogss")[[1]] )
hunspell_check( df$`Researcher name`)

hunspell_analyze( df$`What were the inputs you purchased?`)
#Tokens 
hunspell_parse( df$`What were the inputs you purchased?`)[[3]]
hunspell_parse( df$`Researcher name`)

#summarize
hunspell_suggest( hunspell( paste(df$`What were the inputs you purchased?`, collapse=", ") )[[1]] )

allwords <- hunspell_parse( df$`What were the inputs you purchased?`)
stems <- unlist( hunspell_stem( unlist(allwords)))
words <- sort( table(stems), decreasing = TRUE)
print( length(words) )
print( head(words, 30))

## now remove stop words 
dw = as.data.frame( words )
dw$stems = as.character( dw$stems)
stops = dw$stems %in% stopwords::stopwords( source = 'stopwords-iso')
fin_words = head( dw[ !stops, ], 300)
print( fin_words, max=50 )


## plot word cloud
wordcloud2( fin_words)

names( fin_words ) <- c('word', 'count')
fin_words$count <- (fin_words$count)^(2/3)
wordcloud2( fin_words)


## wordcloud using quanteda <<< Naahh!! Wordcloud2 rules
set.seed(100)
textplot_wordcloud(dfm( as.character(df$`What were the inputs you purchased?`)), min_count = 6, random_order = FALSE,
                   rotation = .25, 
                   color = RColorBrewer::brewer.pal(8,"Dark2"))



var_colz = c("Where did you buy them?", "What were the inputs you purchased?", "Which alternative?", "Why did you select Agrics?", 
             "How did you pay for the Agrics package that you purchased in the last 12 months? - Other - Text", 
             "Please explain...32", "How has your quality of life improved?", "How has your quality of life worsened?", 
             "Please explain your score...39", "Please explain your score...40", "Please explain your score...41",
             "Please explain...43", "Regarding the interaction, would you say the respondent was:"
)

#dnul <- 
map( var_colz, ~ dirty.Wordcloud.it( df[.x] ) )





## Gantt chart with diagrammer and mermaid ---  TODO return 
mermaid("gantt
        Section Initiation
        
        Scoping               :a1, 2018-01-15, 10d
        Design                :a2, after a1, 30d
        Resourcing            :a3, after a1, 10d

        Section Execution 
        Kick-off              :a4, 2018-03-01, 2d
        Pilot                 :a5, after a2, 5d
        Data Collection       :a6, after a5, 14d

        Section Analysis
        DQA and Tidying       :a7, after a6, 7d
        Analysis and Reviews  :a8, after a7, 21d

        Section 
        Reporting Workshops   :a9, after a8, 14d
        Action Plans support  :a10, after a9, 30d
        ")


## anaonymize

anonymize( df$`Researcher name` )

names( df )

named <- c("Farmer/supplier name" , "Researcher name", "Farmer branch", "Farmer county/region")

named2 <- c("Farmer/supplier name" , "Farmer branch")

catz <- c( "Researcher name", "Farmer county/region")


df <- named %>% 
  map( ~ as.data.frame(df) %>% 
         select(matches(.x)) %>%
         unlist %>% anonymize 
       ) %>%  
  set_names( paste("Anon.", named, sep="")  ) %>%
  bind_cols(df, .) %>% 
  select( -named )

by(df[c(4,16)], df$`Anon.Researcher name`, dfSummary) 


numeric_colz <- df %>% select_if( is.numeric ) %>% names
print( numeric_colz )

char_colz <- df %>% select_if( is.character ) %>% names
print( char_colz )



df <- anonColumns( df, named2)     


## FAILS b/c??
df %>% select_if( is.numeric ) %>% summarise_at( funs(n(), mean, median) )
## WORKS
d <- df %>% summarise_if( is.numeric, funs(n(), mean, median))
pander::pandoc.table( d )
d <- df %>% summarise_if( is.character, funs(nlevels(as.factor(.) ), nmiss=sum(is.na(.))))
pander::pandoc.table( d )

dfSummary (df) 


df %>% group_by( 'Researcher name' ) %>% summarise( freq_n=nlevels(.))



df <- zLoadRawDataFrame( "agrics_raw.xlsx" )
df <- zAnonColumns( df, named2 )
df <- zFormatDateCol(df,  c("Date of interview (dd/mm/yy)") )
zDescribeSampleStucture(df, catz)
df <- zFlagIssues(df)
View( sample_n(df, 10) )
dfSummary (df)



table( df$`Researcher name`)
table( df$`Farmer county/region`)
table( df$`Researcher name`, df$`Farmer county/region`)




##TODO: chuck date column prior 
#df <- df %>% select_if(is.character ) %>% as.data.frame %>% map( ~ tolower)
#df <- map( df, tolower)
zTrim <- function (x) gsub("^\\s+|\\s+$", "", x)

df <- as_tibble(
  lapply( df, function(x){
    if( is.character(x) ) return( zTrim(tolower(x) ) )
    else return( zTrim(x) )
  })
)
head(df)
View( sample_n(df, 30) )
dfSummary (df)



###Flag OR issues 
#zDescribeSampleStucture(df, char_colz  )
# Fix Obvious  
df$`Researcher name`[which( df$`Researcher name` == "julie ouma")] <- "juliet ouma" 

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





zDescribeSampleStucture(df, catz)


## using NLP to fix 
spacy_initialize() 
spacy_tokenize( as.character(df$`What were the inputs you purchased?`))

