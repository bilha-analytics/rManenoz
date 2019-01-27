---
title: "JunkSpace"
author: "BG"
date: "January 27, 2019"
output: 
  html_document: 
    fig_caption: yes
    keep_md: yes
    number_sections: yes
    toc: yes
---



# Project Plans


```r
var.Anon.Colz <-  c("Farmer/supplier name" , "Farmer branch")

var.Group.Byz <-  c( "Researcher name", "Farmer county/region")

var.Date.Colz <- c("Date of interview (dd/mm/yy)") 
```




# Data Exploration 

#Load DB 

```
## New names:
## * `Please explain.` -> `Please explain...32`
## * `Please explain your score.` -> `Please explain your score...39`
## * `Please explain your score.` -> `Please explain your score...40`
## * `Please explain your score.` -> `Please explain your score...41`
## * `Please explain.` -> `Please explain...43`
```

## Including Plots


```r
#kable( dfSummary( df ) )

pander( addmargins(table( df$`Researcher name`, df$`Farmer county/region`) ) , caption = "Number of records by Researcher and Region")
```

```
## 
## --------------------------------------------------------------------------
##        &nbsp;         bungoma   bungoma north   busia   butere   kakamega 
## -------------------- --------- --------------- ------- -------- ----------
##    **julie ouma**        0            0           0       1         0     
## 
##   **juliet ouma**       11            0           0       7         0     
## 
##  **juliet wanjiku**     13            0           0       6         3     
## 
##   **lilian oporo**       7            1           2       5         4     
## 
##  **maxwell lubeka**      6            0           1       4         0     
## 
##       **Sum**           37            1           3       23        7     
## --------------------------------------------------------------------------
## 
## Table: Table continues below
## 
##  
## ------------------------------------------------------------------------------
##        &nbsp;         kakamega east   kakamega north   kakamega south   saiya 
## -------------------- --------------- ---------------- ---------------- -------
##    **julie ouma**           1               0                0            0   
## 
##   **juliet ouma**           3               9                0            0   
## 
##  **juliet wanjiku**         4               1                0            0   
## 
##   **lilian oporo**          3               2                0            1   
## 
##  **maxwell lubeka**         5               9                1            0   
## 
##       **Sum**              16               21               1            1   
## ------------------------------------------------------------------------------
## 
## Table: Table continues below
## 
##  
## ----------------------------------
##        &nbsp;         siaya   Sum 
## -------------------- ------- -----
##    **julie ouma**       0      2  
## 
##   **juliet ouma**       1     31  
## 
##  **juliet wanjiku**     0     27  
## 
##   **lilian oporo**      4     29  
## 
##  **maxwell lubeka**     3     29  
## 
##       **Sum**           8     118 
## ----------------------------------
```

```r
zDescribeSampleStucture(df, var.Group.Byz)
```

```
## 
## 
##   *
## 
##     ---------------------------------------------------------------------------------
##      julie ouma   juliet ouma   juliet wanjiku   lilian oporo   maxwell lubeka   Sum
##     ------------ ------------- ---------------- -------------- ---------------- -----
##          2            31              27              29              29         118
##     ---------------------------------------------------------------------------------
## 
##   *
## 
##     ---------------------------------------------------------------------
##      bungoma   bungoma north   busia   butere   kakamega   kakamega east
##     --------- --------------- ------- -------- ---------- ---------------
##        37            1           3       23        7            16
##     ---------------------------------------------------------------------
## 
##     Table: Table continues below
## 
## 
##     -------------------------------------------------------
##      kakamega north   kakamega south   saiya   siaya   Sum
##     ---------------- ---------------- ------- ------- -----
##            21               1            1       8     118
##     -------------------------------------------------------
## 
## 
## <!-- end of list -->
## 
## 
## 
## 
##   *
## 
##     ---------------------------------------------------------------------------
##      julie ouma   juliet ouma   juliet wanjiku   lilian oporo   maxwell lubeka
##     ------------ ------------- ---------------- -------------- ----------------
##         1.7          26.3            22.9            24.6            24.6
##     ---------------------------------------------------------------------------
## 
##   *
## 
##     ---------------------------------------------------------------------
##      bungoma   bungoma north   busia   butere   kakamega   kakamega east
##     --------- --------------- ------- -------- ---------- ---------------
##       31.4          0.8         2.5     19.5      5.9          13.6
##     ---------------------------------------------------------------------
## 
##     Table: Table continues below
## 
## 
##     -------------------------------------------------
##      kakamega north   kakamega south   saiya   siaya
##     ---------------- ---------------- ------- -------
##           17.8             0.8          0.8     6.8
##     -------------------------------------------------
## 
## 
## <!-- end of list -->
```

```
## NULL
```

## something fancy

```r
var_colz = c("Where did you buy them?", "What were the inputs you purchased?", "Which alternative?", "Why did you select Agrics?", 
             "How did you pay for the Agrics package that you purchased in the last 12 months? - Other - Text", 
             "Please explain...32", "How has your quality of life improved?", "How has your quality of life worsened?", 
             "Please explain your score...39", "Please explain your score...40", "Please explain your score...41",
             "Please explain...43", "Regarding the interaction, would you say the respondent was:"
             )

map( var_colz, ~ zDirty.Wordcloud.it( df[.x] ) )
```

```
## Warning in max(dataOut$freq): no non-missing arguments to max; returning -
## Inf
```

```
## [[1]]
## 
## [[2]]
## 
## [[3]]
## 
## [[4]]
## 
## [[5]]
## 
## [[6]]
## 
## [[7]]
## 
## [[8]]
## 
## [[9]]
## 
## [[10]]
## 
## [[11]]
## 
## [[12]]
## 
## [[13]]
```
