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






# Data Exploration 


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
kable( dfSummary( df ) )
```



 No                                                                                Variable                                                                                                                                                                                                                                           Stats / Values                                                                                                                                                                                                                                          Freqs (% of Valid)                                                                                                                                                                                                                                                                                                                                                                                                                                             Graph                                                                                                                                                                                                                                                                                                                                                                                                                     Text Graph                                                           Valid           Missing    
----  ------------------------------------------------------------------------------------------------------------------------------------------------------------------  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  -----------------------------------------------------------------------------------------------------------------  ---------------  ---------------
 1                                                                    Farmer/supplier name\
[character]                                                                                                                              1\. ADELAILE SHITILI\
2\. Agnes  Ndege\
3\. AGNES MAFURA\
4\. Agneta Barasa\
5\. Albert Opiro\
6\. Alfred Webi P\
7\. Alice Malisi\
8\. Anna Oyiera\
9\. Beatrice Okisai\
10\. Benina Shisanyanya\
[ 108 others ]                                                                            1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
108 (91.5%)                                                  <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAWVJREFUeJzt16GBQgEUA0E+13/PRwGIt4qImQpWxOT1N+n164DvZBWyClmFrGI263l+3fCFrEJWIauQVcgqZBWyClmFrEJWMft8Js1mjW5L1p2sQlYhq5BVyCpkFbIKWYWsYvb5TJrNGt2WrDtZhaxCViGrkFXIKmQVsgpZxWzWJFnF7LZk3ckqZBWyClmFrEJWIauQVcgqZp/PpNms0W3JupNVyCpkFbIKWYWsQlYhq5BVzD6fSbNZo9uSdSerkFXIKmQVsgpZhaxCViGrmM2aJKuY3ZasO1mFrEJWIauQVcgqZBWyClnF7POZNJs1ui1Zd7IKWYWsQlYhq5BVyCpkFbKK2eczSVYxO3lZd7IKWYWsQlYhq5BVyCpkFbKK2eczaTZrdFuy7mQVsgpZhaxCViGrkFXIKmQVs89n0mzWs+iT9d4jq5BVyCpkFbIKWYWsQlYhqxjOWjR7yCbJKmQVsgpZxT9Z1+Vc0A0a9AAAAABJRU5ErkJggg==">                                                                \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
IIIIIIIIIIIIIIII                                 118\
(100%)        0\
(0%)    
 2                                                                    Farmer county/region\
[character]                                                                                                                                                   1\. Bungoma\
2\. Butere\
3\. BUNGOMA\
4\. KAKAMEGA NORTH\
5\. BUTERE\
6\. Kakamega East\
7\. Kakamega\
8\. Siaya\
9\. Kakamega North\
10\. KAKAMEGA EAST\
[ 10 others ]                                                                                                     25 (21.2%)\
15 (12.7%)\
11 ( 9.3%)\
 9 ( 7.6%)\
 8 ( 6.8%)\
 8 ( 6.8%)\
 7 ( 5.9%)\
 7 ( 5.9%)\
 6 ( 5.1%)\
 4 ( 3.4%)\
18 (15.2%)                                                               <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAVlJREFUeJzt3DFSw1AQBUEb7n9niIgM1BOWNUX1nKCDXdX+RLf3ZLerAY/DWsJawlrCWsqy7sU+WW+9sJawlrCWsJawlrCWsJawlrCW7tlbPhnW0pmz9TfWaeuEhYWFhYWFhYWF9V9YzVs+GdbSM2brHNaVG4eFhYWFhYWFhYWFdZzVfGIkw1o6Olvnsyrbh4WFhYWFhYWFhZVlNW/5ZFhLB2brRazYEmJhYWFhYWFhYWH1WM1bPhnWUna2qpuIhYWFhYWFhYWFhfULq/nESIa1NM3WS1mtHcTCwsLCwsLCwsIKspq3fDKspexsVTcRCwsLCwsLCwsLq8Nq3vLJsJayrNiwf7FanwYsLCwsLCwsLCysIKt5yyfDWvphti5mVbYPCwsLCwsLCwsLK8tq3vLJsJaO/nn4WAvrm008ISwsLCwsLCwsLCysZ7KaT4xkWEtYS1hLWEtR1gfsIrQ25yesBwAAAABJRU5ErkJggg==">                                            IIIIIIIIIIIIIIII \ 
IIIIIIIII \ 
IIIIIII \ 
IIIII \ 
IIIII \ 
IIIII \ 
IIII \ 
IIII \ 
III \ 
II \ 
IIIIIIIIIII     118\
(100%)        0\
(0%)    
 3                                                                        Farmer branch\
[character]                                                                                                                                                                1\. Lugari\
2\. Namirama\
3\. Sirembe\
4\. Changeywo\
5\. Ekero\
6\. Eshihaka\
7\. Kamusinga\
8\. Kholera\
9\. Kimilili\
10\. Komolo\
[ 87 others ]                                                                                                                3 ( 2.5%)\
 3 ( 2.5%)\
 3 ( 2.5%)\
 2 ( 1.7%)\
 2 ( 1.7%)\
 2 ( 1.7%)\
 2 ( 1.7%)\
 2 ( 1.7%)\
 2 ( 1.7%)\
 2 ( 1.7%)\
95 (80.5%)                                 <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAYdJREFUeJzt3TFSxEAQBEEB//8zFzoswNiy1EbmC8qYUcxaur4mXU8H/E9WIauQVcgqZrM+bk93/PLK+nyRdURWIauQVcgqZBWyClmFrGI3a/OWnySrmJ2t1U2UdUxWIauQVcgqZBWyClmFrGL2lp8kq5idrdVNlHVMViGrkFXIKmQVsgpZhaxiN2vziTFJVvGeracr/rg3UdYhWYWsQlYhq5BVyCpkFbKK3azNW36SrGJ2tlY3UdYxWYWsQlYhq5BVyCpkFbKK2Vt+kqxidrZWN1HWMVmFrEJWIauQVcgqZBWyit2szSfGJFnF7GytbqKsY7IKWYWsQlYhq5BVyCpkFbO3/CRZxexsrW6irGOyClmFrEJWIauQVcgqZBWzt/wkWcVs1ujIr34gZB2TVcgqZBWyClmFrEJWIauYveUnySpmZ2t1E2Udk1XIKmQVsgpZhaxCViGrmL3lJ8kqrp8/1Iy5N3GOrEJWIauQVcgqZBWyClmFrGI4a9Hsg2ySrEJWIauQVXwDMwHjAC/i4fAAAAAASUVORK5CYII=">                                          \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
IIIIIIIIIIIIIIII                                 118\
(100%)        0\
(0%)    
 4                                                                       Researcher name\
[character]                                                                                                                                                                                            1\. JULIE OUMA\
2\. JULIET OUMA\
3\. Juliet Wanjiku\
4\. Lilian Oporo\
5\. Maxwell Lubeka                                                                                                                                                                                 2 ( 1.7%)\
31 (26.3%)\
27 (22.9%)\
29 (24.6%)\
29 (24.6%)                                                                                                                                                                                                 <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAACCCAMAAACTmMFdAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAM5JREFUeJzt1zsKAzEQBUF/7n9nOzFaw4JpJ5qF6hNUMA+k23Nkt92A87BKY1n31W7M6s16fML6FVYJq4RVwiphlbBKWCWsElZp7BdjZFilr9ua03GJc8IqYZWwSlglrBJWCauEVcIq3ce+5UeGVZpwW+es7bPDwsLCwsLCwsLCwvqLtb1T1siwShNua3Vk7V7iCquEVcIqYZWwSlglrBJWCat0BdagDqyRYZXG3tbUJe7GrLBKWCWsElYJq4RVwiphla7AGtSBNTKsElbpBbATr3I2slfXAAAAAElFTkSuQmCC">                                                                                                                                                            I \ 
IIIIIIIIIIIIIIII \ 
IIIIIIIIIIIII \ 
IIIIIIIIIIIIII \ 
IIIIIIIIIIIIII                        118\
(100%)        0\
(0%)    
 5                                                                Date of interview (dd/mm/yy)\
[character]                                                                                                                                          1\. 18/10/2017\
2\. 19/10/2014\
3\. 19/10/2017\
4\. 20/10/2017\
5\. 23/10/2013\
6\. 23/10/2014\
7\. 23/10/2017\
8\. 23/12/2017\
9\. 24/10/2014\
10\. 24/10/2017\
11\. 24/20/2017                                                                                                  1 ( 0.8%)\
 1 ( 0.8%)\
21 (17.8%)\
 2 ( 1.7%)\
 1 ( 0.8%)\
 1 ( 0.8%)\
43 (36.4%)\
 1 ( 0.8%)\
 2 ( 1.7%)\
44 (37.3%)\
 1 ( 0.8%)                       <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAZdJREFUeJzt20tqAzEURcHY3v+eYwjkQzLQgSa+gzorqIEETy3122Oyt1cD/g6rhFXCKmGVZlm3Z69W/OrJut+xDsMqYZWwSlglrBJWCauEVdplbc7yk2GVZtfW6k7EOg6rhFXCKmGVsEpYJawSVml2lp8Mq/Sxtq7oatb9krCwsLCwsLCwsLCw/pu1ecSYDKv0tbZeLfnR507EOgirhFXCKmGVsEpYJawSVmmXtTnLT4ZVmr1CX31wgHUcVgmrhFXCKmGVsEpYJazS7Cw/GVZpdm2t7kSs47BKWCWsElYJq4RVwiphlXZZm0eMybBK1z21vq7HhQ/TrwurhFXCKmGVsEpYJawSVgmrdFue5SfDKs1+g1j9YoN1HFYJq4RVwiphlbBKWCWs0uwsPxlWaZb17YPETrv/VWMdh1XCKmGVsEpYJawSVgmrNDvLT4ZVWrxCfzb44OAZVgmrhFXCKmGVsEpYJawSVuk2O8tPhlWavUJffXCAdRxWCauEVcIqYZWwSlglrNIua/OIMRlWCauEVcIqjbLeAdaY0ENvLGayAAAAAElFTkSuQmCC">                      \ 
 \ 
IIIIIII \ 
 \ 
 \ 
 \ 
IIIIIIIIIIIIIII \ 
 \ 
 \ 
IIIIIIIIIIIIIIII \                       118\
(100%)        0\
(0%)    
 6                                                               Do you use the Agrics services?\
[character]                                                                                                                                                                                                                             1\. Yes                                                                                                                                                                                                                                                118 (100.0%)                                                                                                                                                                                                                                                                                                                      <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAAaCAMAAABirVVzAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAD9JREFUSInt17EBACAQg8Do77+zDmBDZQpuAloylTKr0c3afcwizCLMIswizCLMIswizCLMIswiirMa5feovh08xh5nnuEyXgAAAABJRU5ErkJggg==">                                                                                                                                                                                                                                                                                       IIIIIIIIIIIIIIII                                                     118\
(100%)        0\
(0%)    
 7                                                                 Have you done so in the past?\
[logical]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        All NA's                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                0\
(0%)        118\
(100%)  
 8                                                           Can you tell me why you no longer do so?\
[logical]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   All NA's                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                0\
(0%)        118\
(100%)  
 9                                                                             Why?\
[logical]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     All NA's                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                0\
(0%)        118\
(100%)  
 10                  Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 1\
[numeric]                                                                                                                                                    mean (sd) : 1 (0)\
min < med < max :\
1 < 1 < 1\
IQR (CV) : 0 (0)                                                                                                                                                                                                                 1 : 118 (100.0%)                                                                                                                                                                                                                                                                                                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAAaCAMAAABirVVzAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAD9JREFUSInt17EBACAQg8Do77+zDmBDZQpuAloylTKr0c3afcwizCLMIswizCLMIswizCLMIswiirMa5feovh08xh5nnuEyXgAAAABJRU5ErkJggg==">                                                                                                                                                                                                                                                                                       IIIIIIIIIIIIIIII                                                     118\
(100%)        0\
(0%)    
 11             Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 1 - Text\
[character]                                                                                    1\. Maize\
2\. Selling vegetables\
3\. Selling maize\
4\. Maize farming\
5\. Maize and beans\
6\. Wages\
7\. Livestock- cows\
8\. Mixed farming\
9\. Pension\
10\. Teacher\
[ 39 others ]                                                                                            34 (28.8%)\
12 (10.2%)\
 9 ( 7.6%)\
 6 ( 5.1%)\
 5 ( 4.2%)\
 5 ( 4.2%)\
 2 ( 1.7%)\
 2 ( 1.7%)\
 2 ( 1.7%)\
 2 ( 1.7%)\
39 (33.1%)                                                 <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAW9JREFUeJzt3EFKA1EQRdGo+9+zQyN0sC+C/yHnruAMqkL9QefxMdnjNOA6rBJWCauEVZplvR3vmvV+OCwsLCwsLCwsLKx51vEuWZNhlfJs/Rnr12uDhYWFhYWFhYWF9d9Zm7f8ZFilW7N1hLWyfVhYWFhYWFhYWFhYjbX5xJgMq/R6tk6zZtYPCwsLCwsLCwsLa5W1ectPhlW6nq3TqutNxMLCwsLCwsLCwsL6xtq85SfDKs3O1uomYmFhnVZhYWFhYWFhzbM2nxiTYZWeZus05bmvTcT6OawSVgmrhFXCKmGVsEpYpV3W5i0/GVZpdrZWNxHrdlglrBJWCauEVcIqYZWwSrO3/GRYpVnW6Miv/kBg3Q6rhFXCKmGVsEpYJawSVmn2lp8MqzQ7W6ubiHU7rBJWCauEVcIqYZWwSlil2Vt+MqzS638ePtrlB8zHwyphlbBKWCWsElYJq4RVwioNsxabfZBNhlXCKmGVsEqf/a/K7QhNS/0AAAAASUVORK5CYII=">                                            IIIIIIIIIIIII \ 
IIII \ 
III \ 
II \ 
II \ 
II \ 
 \ 
 \ 
 \ 
 \ 
IIIIIIIIIIIIIIII                    118\
(100%)        0\
(0%)    
 12                  Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 2\
[numeric]                                                                                                                                                    mean (sd) : 2 (0)\
min < med < max :\
2 < 2 < 2\
IQR (CV) : 0 (0)                                                                                                                                                                                                                 2 : 118 (100.0%)                                                                                                                                                                                                                                                                                                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAAaCAMAAABirVVzAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAD9JREFUSInt17EBACAQg8Do77+zDmBDZQpuAloylTKr0c3afcwizCLMIswizCLMIswizCLMIswiirMa5feovh08xh5nnuEyXgAAAABJRU5ErkJggg==">                                                                                                                                                                                                                                                                                       IIIIIIIIIIIIIIII                                                     118\
(100%)        0\
(0%)    
 13             Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 2 - Text\
[character]                                                                                  1\. Beans\
2\. n/a\
3\. Maize\
4\. Vegetables\
5\. Maize and beans\
6\. Selling beans\
7\. Selling maize\
8\. Selling vegetables\
9\. Chicken\
10\. Community Health Voluntee\
[ 32 others ]                                                                                           14 (13.9%)\
14 (13.9%)\
 8 ( 7.9%)\
 8 ( 7.9%)\
 6 ( 5.9%)\
 5 ( 5.0%)\
 4 ( 4.0%)\
 3 ( 3.0%)\
 2 ( 2.0%)\
 2 ( 2.0%)\
35 (34.6%)                                           <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAXdJREFUeJzt3EFKA1EQRdFo9r9nERxIiLGvQfuB567gDKqa+pO+XCe7nA24H1YJq4RVwirNsl6e6DdZrz8OCwsLCwsLCwsL65+wNm/5ybBKs7O1uolYWFhYWFhYWFhYO6zNW34yrNKh2TqFdeLCYWFhYWFhYWFhYWE9wdp8YkyGVZqdrdVNxMLCwsLCwsLCwtphbd7yk2GVHs7WqaylDcTCwsLCwsLCwsKaZG3e8pNhlb6arfNZY0uIhYWFhYWFhYWFhXWQtfnEmAyrdG+2zjZd724i1pdhlbBKWCWsElYJq4RVwirtsjZv+cmwSrezdbbno5tNxHoYVgmrhFXCKmGVsEpYJazSLmvzlp8MqzTLmhv39z59ILC+DauEVcIqYZWwSlglrBJWaZe1ectPhlWana3VTcQ6HFYJq4RVwiphlbBKWCWs0uwtPxlW6dCfh/++R//fOi+sElYJq4RVwiphlbBKWCWs0jBrsdkH2WRYJawSVgmr9AYUQczOKYhuhwAAAABJRU5ErkJggg==">                                       IIIIII \ 
IIIIII \ 
III \ 
III \ 
II \ 
II \ 
I \ 
I \ 
 \ 
 \ 
IIIIIIIIIIIIIIII                    101\
(85.59%)    17\
(14.41%)  
 14                  Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 3\
[numeric]                                                                                                                                                    mean (sd) : 3 (0)\
min < med < max :\
3 < 3 < 3\
IQR (CV) : 0 (0)                                                                                                                                                                                                                 3 : 118 (100.0%)                                                                                                                                                                                                                                                                                                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAAaCAMAAABirVVzAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAD9JREFUSInt17EBACAQg8Do77+zDmBDZQpuAloylTKr0c3afcwizCLMIswizCLMIswizCLMIswiirMa5feovh08xh5nnuEyXgAAAABJRU5ErkJggg==">                                                                                                                                                                                                                                                                                       IIIIIIIIIIIIIIII                                                     118\
(100%)        0\
(0%)    
 15             Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 3 - Text\
[character]                                                                                                    1\. n/a\
2\. vegetables\
3\. Beans\
4\. Groundnuts\
5\. Labour\
6\. Vegetables\
7\. Millet\
8\. Selling beans\
9\. Bananas\
10\. Business\
[ 21 others ]                                                                                                             25 (33.3%)\
11 (14.7%)\
 3 ( 4.0%)\
 3 ( 4.0%)\
 3 ( 4.0%)\
 3 ( 4.0%)\
 2 ( 2.7%)\
 2 ( 2.7%)\
 1 ( 1.3%)\
 1 ( 1.3%)\
21 (28.0%)                                               <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAXNJREFUeJzt21tKA1EQRVET5z9nBUlAiZLtq4+y9gjWR1VT96MfHid7OBpwO6wSVgmrhFWaZZ0We2ad98IqYZWwSlglrBJWCauEVcIqnWZv+cmwSt8xWz/D+vLaYGFhYWFhYWFhYf131uYtPxlW6eZsHY26vYlYWFhYWFhYWFhYWH+CtfnEmAyrNDtbq5uIhYV1eFhYWFhYWFhX1uYtPxlWaXa2VjcRCwvr8LCwsLCwsLCurM1bfjKs0uxsrW4iFhbW4WFhYWFhYWGtszafGJNhld7M1tGcS683EevjsEpYJawSVgmrhFXCKmGVdlmbt/xkWKXZ2VrdRKy7wyphlbBKWCWsElYJq4RVmr3lJ8MqzbLGhv2lywcC656wSlglrBJWCauEVcIqYZV2WZu3/GRYpdnZWt1ErLvDKmGVsEpYJawSVgmrhFWaveUnwyrd/CX3F3ufdT4wLCwsLCwsLCwsLKzPszafGJNhlbBKWCWs0ijrCfHSy3Gcl9ORAAAAAElFTkSuQmCC">                                          IIIIIIIIIIIIIIII \ 
IIIIIII \ 
I \ 
I \ 
I \ 
I \ 
I \ 
I \ 
 \ 
 \ 
IIIIIIIIIIIII                   75\
(63.56%)     43\
(36.44%)  
 16                  Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 4\
[numeric]                                                                                                                                                    mean (sd) : 4 (0)\
min < med < max :\
4 < 4 < 4\
IQR (CV) : 0 (0)                                                                                                                                                                                                                 4 : 118 (100.0%)                                                                                                                                                                                                                                                                                                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAAaCAMAAABirVVzAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAD9JREFUSInt17EBACAQg8Do77+zDmBDZQpuAloylTKr0c3afcwizCLMIswizCLMIswizCLMIswiirMa5feovh08xh5nnuEyXgAAAABJRU5ErkJggg==">                                                                                                                                                                                                                                                                                       IIIIIIIIIIIIIIII                                                     118\
(100%)        0\
(0%)    
 17             Can you please tell me what were the main sources of income were for your family in the last 12 months? - Income source 4 - Text\
[character]                                                                                   1\. Business- selling fish\
2\. Millet\
3\. n/a\
4\. pension\
5\. Selling vegeables\
6\. Soya beans & vegetables\
7\. Sugarcane\
8\. Tomatoes\
9\. vegetables\
10\. Vegetables\
11\. Wages                                                                                             1 ( 2.6%)\
 1 ( 2.6%)\
27 (69.2%)\
 1 ( 2.6%)\
 1 ( 2.6%)\
 1 ( 2.6%)\
 1 ( 2.6%)\
 1 ( 2.6%)\
 3 ( 7.7%)\
 1 ( 2.6%)\
 1 ( 2.6%)                         <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAZJJREFUeJzt3EtOw1AQRcFA9r9nQHwjQHpn5DuoWsGR0h21PfDtPul2dcDfZBWyClmFrGI26+nd1SGPXrOe38g6IauQVcgqZBWyClmFrEJWsZu1ectPklXMztbqJso6JquQVcgqZBWyClmFrEJWMXvLT5JVfM3Wls9N3CKrkFXIKmQVsgpZhaxCViGrGM5aNPtANmk26+PXvDrk0e6LJFnHZBWyClmFrEJWIauQVcgqZm/5SbKK2dla3URZx2QVsgpZhaxCViGrkFXIKmZv+UmyitnZWt1EWcdkFbIKWYWsQlYhq5BVyCp2szYfMSbJKmZna3UTZR2TVcgqZBWyClmFrEJWIauYveUnySpmZ2t1E2Udk1XIKmQVsgpZhaxCViGrmL3lJ8kqZrN+f87p6qb79x/ED7L+JauQVcgqZBWyClmFrEJWsZu1ectPklXMvhpZfZEk65isQlYhq5BVyCpkFbIKWcXsLT9JVjE7W6ubKOuYrEJWIauQVcgqZBWyClnFbtbmI8YkWYWsQlYhqxjNegGh1d/XEH7CuQAAAABJRU5ErkJggg==">                                  \ 
 \ 
IIIIIIIIIIIIIIII \ 
 \ 
 \ 
 \ 
 \ 
 \ 
I \ 
 \                                 39\
(33.05%)     79\
(66.95%)  
 18                                        Did you ever purchase Agrics inputs/packages for this first income source?\
[character]                                                                                                                                                                                                    1\. No\
2\. Yes                                                                                                                                                                                                                                       34 (28.8%)\
84 (71.2%)                                                                                                                                                                                                                                                                                           <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAA0CAMAAABfCzE1AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAGJJREFUWIXt17ERgDAQA0GD+++ZnCGRPR4U7FWwwX+gMSsbfwO+G/Pa6SDrXg8LCwsLCwsLCwsLC+vN6lw+lWElbd7WqfY+8VRYSVhJWElYSVhJWElYSVhJWEnFrMZqB1llD9ucRyrPHcZZAAAAAElFTkSuQmCC">                                                                                                                                                                                                                                                            IIIIII \ 
IIIIIIIIIIIIIIII                                                118\
(100%)        0\
(0%)    
 19                                        Did you ever purchase Agrics inputs/packages for this second income source?\
[character]                                                                                                                                                                                                   1\. No\
2\. Yes                                                                                                                                                                                                                                       29 (28.7%)\
72 (71.3%)                                                                                                                                                                                                                                                                                           <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAA0CAMAAABfCzE1AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAGJJREFUWIXt17ERgDAQA0GD+++ZnCGRPR4U7FWwwX+gMSsbfwO+G/Pa6SDrXg8LCwsLCwsLCwsLC+vN6lw+lWElbd7WqfY+8VRYSVhJWElYSVhJWElYSVhJWEnFrMZqB1llD9ucRyrPHcZZAAAAAElFTkSuQmCC">                                                                                                                                                                                                                                                            IIIIII \ 
IIIIIIIIIIIIIIII                                               101\
(85.59%)    17\
(14.41%)  
 20                                        Did you ever purchase Agrics inputs/packages for this third income source?\
[character]                                                                                                                                                                                                    1\. No\
2\. Yes                                                                                                                                                                                                                                       45 (60.8%)\
29 (39.2%)                                                                                                                                                                                                                                                                                           <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAA0CAMAAABfCzE1AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAGJJREFUWIXt17ERgDAQA0Eb998zFEAizxgU7FWwwX+gsSobfwPeG2s29rCuvrCSsJKwkrCSsJKwkrCSsJKwkrCSZu3yqQwr6YPb2mSd/iosLCwsLCwsLCwsrDOszolRWSnrBir1Q3I05dB2AAAAAElFTkSuQmCC">                                                                                                                                                                                                                                                          IIIIIIIIIIIIIIII \ 
IIIIIIIIII                                             74\
(62.71%)     44\
(37.29%)  
 21                                        Did you ever purchase Agrics inputs/packages for this fourth income source?\
[character]                                                                                                                                                                                                   1\. No\
2\. Yes                                                                                                                                                                                                                                       32 (82.0%)\
 7 (17.9%)                                                                                                                                                                                                                                                                                           <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAA0CAMAAABfCzE1AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAGFJREFUWIXt17ERgEAMA0E/33/PUAAzoOgV7FWwgR1odmVzGvDe7NXYw7r6wkrCSsJKwkrCSsJKwkrCSsJKwkpatcunMqykP7d1hvX5FlhYWFhYWFhYWFhYlazOiVFZKesGpNhJWsMf6U0AAAAASUVORK5CYII=">                                                                                                                                                                                                                                                              IIIIIIIIIIIIIIII \ 
III                                                39\
(33.05%)     79\
(66.95%)  
 22                               Before Agrics, have you purchased similar inputs or received training from another provider?\
[character]                                                                                                                                                                             1\. No\
2\. Yes, often\
3\. Yes, sometimes                                                                                                                                                                                                                    76 (64.4%)\
21 (17.8%)\
21 (17.8%)                                                                                                                                                                                                                                                                   <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABOCAMAAAD1sh+SAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAHtJREFUaIHt18ENwkAQBEEb8s/ZBIBkzwf6UR1BSXf7mOOd7Pg34HtZ1lnsw3r1wlrCWsJawlrCWsJawlrCWsJaCrOKZQdZsizr+YP/lvX4PLCwsLCwsLCwsLCwUqzmxEiGtZT9W9VLxMLCwsLCwsLCwsK6YTUnRjKspQvv63LN7TOb9gAAAABJRU5ErkJggg==">                                                                                                                                                                                                                                       IIIIIIIIIIIIIIII \ 
IIII \ 
IIII                                             118\
(100%)        0\
(0%)    
 23                                            Have you purchased inputs on credit from other sellers in the past?\
[character]                                                                                                                                                                                                       1\. No\
2\. Yes                                                                                                                                                                                                                                       89 (75.4%)\
29 (24.6%)                                                                                                                                                                                                                                                                                           <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAA0CAMAAABfCzE1AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAGBJREFUWIXt17EBgDAMA0GH7L8zDECjFKDifoIr7EKzK5u/Ae/NXo09rKsvrCSsJKwkrCSsJKwkrCSsJKwkrKRVu3wqw0o6uK2PWOmXYGFhYWFhYWFhYWF1sDonRmWlrBuvM0fyy9UH0wAAAABJRU5ErkJggg==">                                                                                                                                                                                                                                                             IIIIIIIIIIIIIIII \ 
IIIII                                                118\
(100%)        0\
(0%)    
 24                                                                  Where did you buy them?\
[character]                                                                                                                                                                                                   1\. From One Acre Fund, in Ka\
2\. One acre fund\
3\. One Acre Fund                                                                                                                                                                                                        1 ( 3.4%)\
 3 (10.3%)\
25 (86.2%)                                                                                                                                                                                                                                                         <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABOCAMAAAD1sh+SAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAItJREFUaIHt1zEKgFAMBNGv3v/OKoJ+IYVTZYWZE7wiKXZskY1uQF0sa7nqhrw7WOuZrC/JIskiySLJIskiySLJIskiySLFTozIZJHu25rrRj2fOCdLlixZsmTJkiVLlqxfsDInRmSySOVt9Vd9Yn+ySLJIskiySLJIskiySLJIskjBrMRiB1lkoawdV0x4PdCKYq0AAAAASUVORK5CYII=">                                                                                                                                                                                                                                 \ 
I \ 
IIIIIIIIIIIIIIII                                                29\
(24.58%)     89\
(75.42%)  
 25                                                            What were the inputs you purchased?\
[character]                                                                                 1\. Fertilizer and seeds\
2\. Fertilizer and maize seed\
3\. Fertilizer, maize seeds, \
4\. Fertilizer, tarpaulin and\
5\. Fertilizer,seeds and hoe\
6\. Fertilizers\
7\. Fertilizers and maize\
8\. Fertilizers and seedlings\
9\. Maize and fertilizer.\
10\. Maize seeds\
[ 17 others ]                                             3 (10.3%)\
 1 ( 3.4%)\
 1 ( 3.4%)\
 1 ( 3.4%)\
 1 ( 3.4%)\
 1 ( 3.4%)\
 1 ( 3.4%)\
 1 ( 3.4%)\
 1 ( 3.4%)\
 1 ( 3.4%)\
17 (58.6%)                                         <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAXpJREFUeJzt17FxQzEMBUHZ6r9npwysES/6L9irYAOAA77ek72eBvwfVgmrhFXCKs2yfj73KOv3U1hYWFhYWFhYWFhY7+FbfjKs0jlbT1uOjk3E+hpWCauEVcIqYZWwSlglrNIua/OWnwyrNDtbq5uIdR1WCauEVcIqYZWwSlglrNIua/OLMRlWaXa2VjcR6zqsElYJq4RVwiphlbBKWKXZW34yrNLsbK1uItZ1WCWsElYJq4RVwiphlbBKs7f8ZFil2dla3USs67BKWCWsElYJq4RVwiphlXZZm1+MybBKs7O1uolY12GVsEpYJawSVgmrhFXCKs3e8pNhlWZna3UTsa7DKmGVsEpYJawSVgmrhFWaveUnwyrNskZHfvWBwLoOq4RVwiphlbBKWCWsElZp9pafDKs0O1urm4h1HVYJq4RVwiphlbBKWCWs0uwtPxlW6ZytoY5NHAqrhFXCKmGVsEpYJawSVgmrNMxabPZDNhlWCauEVcIq/QF29tyVMnyv0wAAAABJRU5ErkJggg==">                                                II \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
IIIIIIIIIIIIIIII                               29\
(24.58%)     89\
(75.42%)  
 26                                               Could you easily find a good alternative to Agrics services?\
[character]                                                                                                                                                                                              1\. Maybe\
2\. No\
3\. Not sure\
4\. Yes                                                                                                                                                                                                                1 ( 0.8%)\
88 (74.6%)\
 3 ( 2.5%)\
26 (22.0%)                                                                                                                                                                                                                         <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABoCAMAAAAkR/m5AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAALFJREFUaIHt2EEOwjAQwMCk/f+fS4ET5VBfiCXsF4yURNrN2JWN1YDvxSKNfc65GnHtwdpi3S0WKRYpFikWKRYpFikWKRYpFkm7YiiLRXreLV/nS/QVixSLFIsUixSLFIsUixSLFIskZhnTLmTKtKzXYa52fPR+ibFuFYsUixSLFIsUixSLFIsUi+RlOWd5ZbFIWhb6svghi3zwxIoVK1asWLFixYr1lyznLK8sFknKOgBncKNga6TYSgAAAABJRU5ErkJggg==">                                                                                                                                                                                                    \ 
IIIIIIIIIIIIIIII \ 
 \ 
IIII                                             118\
(100%)        0\
(0%)    
 27                                                                    Which alternative?\
[character]                                                                                                                                                                                            1\. One acre fund\
2\. One Acre Fund\
3\. One acre fund and Momentu\
4\. One Acre Fund.                                                                                                                                                                                       14 (53.8%)\
10 (38.5%)\
 1 ( 3.8%)\
 1 ( 3.8%)                                                                                                                                                                                                                               <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABoCAMAAAAkR/m5AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAKlJREFUaIHt10EKAkEQBMFV//9nPQkLgiaI1iHyBXHoHnqO22THvwGvwyodt8tiD9Z1L6wSVgmrhFXCKmGVsEpYJazSMGux2Q/ZZLOsH05MYv1uv7CwsLCwsLCwsLCwvsna/GJMhlU6z9a/Nc9Om4j1JqwSVgmrhFXCKmGVsEpYpV3W5i0/GVZpljU68qsPBNbHYZWwSlglrBJWCauEVcIqzd7yk2GVRll33XOcDX7c7XIAAAAASUVORK5CYII=">                                                                                                                                                                                                     IIIIIIIIIIIIIIII \ 
IIIIIIIIIII \ 
I \ 
I                                       26\
(22.03%)     92\
(77.97%)  
 28                                                                Why did you select Agrics?\
[character]                                                                 1\. Agrics has better technol\
2\. Agrics has many advantage\
3\. Agrics products are of hi\
4\. Agrics provide chicken pa\
5\. Because Agries have diffe\
6\. Because it is good especi\
7\. Because my son is a teach\
8\. Because of the facilities\
9\. Because of the mode of pa\
10\. Because the fertilizer th\
[ 108 others ]                  1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
  1 ( 0.8%)\
108 (91.5%)                                                  <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAWVJREFUeJzt16GBQgEUA0E+13/PRwGIt4qImQpWxOT1N+n164DvZBWyClmFrGI263l+3fCFrEJWIauQVcgqZBWyClmFrEJWMft8Js1mjW5L1p2sQlYhq5BVyCpkFbIKWYWsYvb5TJrNGt2WrDtZhaxCViGrkFXIKmQVsgpZxWzWJFnF7LZk3ckqZBWyClmFrEJWIauQVcgqZp/PpNms0W3JupNVyCpkFbIKWYWsQlYhq5BVzD6fSbNZo9uSdSerkFXIKmQVsgpZhaxCViGrmM2aJKuY3ZasO1mFrEJWIauQVcgqZBWyClnF7POZNJs1ui1Zd7IKWYWsQlYhq5BVyCpkFbKK2eczSVYxO3lZd7IKWYWsQlYhq5BVyCpkFbKK2eczaTZrdFuy7mQVsgpZhaxCViGrkFXIKmQVs89n0mzWs+iT9d4jq5BVyCpkFbIKWYWsQlYhqxjOWjR7yCbJKmQVsgpZxT9Z1+Vc0A0a9AAAAABJRU5ErkJggg==">                                                                \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
IIIIIIIIIIIIIIII                                 118\
(100%)        0\
(0%)    
 29                            How did you pay for the Agrics package that you purchased in the last 12 months? - Selected Choice\
[character]                                                                                                                                                                         1\. Both cash and mPesa\
2\. Cash\
3\. MPesa                                                                                                                                                                                                                  11 ( 9.3%)\
  2 ( 1.7%)\
105 (89.0%)                                                                                                                                                                                                                                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABOCAMAAAD1sh+SAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAJBJREFUaIHt2DESgCAQBEHE//9Z0UjBKie6DaZfMAEEe22P1KoD1mKztrfqpOHM6k9mfTOLMIswizCLMIswizCLMIswi4idGJHMIu63VV0xuX6iWT+ZRZhFmEWYRZhFmEWYRZhFmEXEToxIZhGL00iC+ZCUwCzCLMIswizCLMIswizCLMIsIjgrUewgixSadQBp53i1z/GCqgAAAABJRU5ErkJggg==">                                                                                                                                                                                                                             I \ 
 \ 
IIIIIIIIIIIIIIII                                                118\
(100%)        0\
(0%)    
 30                               How did you pay for the Agrics package that you purchased in the last 12 months? - Other - Text\
[logical]                                                                                                                                                                                                                                                                                                                                                                                                                                                       All NA's                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                0\
(0%)        118\
(100%)  
 31                         Have you noticed any changes in your crop and livestock output because of Agrics inputs and/or training?\
[character]                                                                                                                                                                     1\. No, no change\
2\. Yes, they have increased                                                                                                                                                                                                                       11 ( 9.4%)\
106 (90.6%)                                                                                                                                                                                                                                                                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAA0CAMAAABfCzE1AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAGpJREFUWIXt16sBwDAMxFA32X/nNjCfAqEc0JtAwAZXPVLdDjir/qxuJw1fVpuZ9c8swizCLMIswizCLMIswizCLCI3K3P5RDKLONxWgv0TE5hFmEWYRZhFmEWYRZhFmEWYRQRnJYodZJFeCBNLdsuTuSQAAAAASUVORK5CYII=">                                                                                                                                                                                                                                                         I \ 
IIIIIIIIIIIIIIII                                                 117\
(99.15%)     1\
(0.85%)   
 32                                                                    Please explain...32\
[character]                                                                    1\. At first season the crops\
2\. At first the produce was \
3\. Because the fertilizer ha\
4\. Before Agrics I could not\
5\. Before at One Acre Fund I\
6\. Before I used to get 2 ba\
7\. Before I was not getting \
8\. Before I was only harvest\
9\. Before l join Agries l wa\
10\. Before with the other typ\
[ 107 others ]                  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
107 (91.5%)                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAXxJREFUeJzt17tVREEMBcF9kH/OfFww1NZeoyqCNqQ5mtfnpNe7A/4nq5BVyCpkFbNZz/O8O+Kv76wPWVeyClmFrEJWIauQVcgqZBW7WZu3/CRZxexsrW6irDNZhaxCViGrkFXIKmQVsorZW36SrGJ2tlY3UdaZrEJWIauQVcgqZBWyClnFbtbmF2OSrGJ2tlY3UdaZrEJWIauQVcgqZBWyClnF7C0/SVYxO1urmyjrTFYhq5BVyCpkFbIKWYWsYvaWnySrmJ2t1U2UdSarkFXIKmQVsgpZhaxCVrGbtfnFmCSrmJ2t1U2UdSarkFXIKmQVsgpZhaxCVjF7y0+SVczO1uomyjqTVcgqZBWyClmFrEJWIauYveUnySpms0ZHfvWBkHUmq5BVyCpkFbIKWYWsQlYxe8tPklXMztbqJso6k1XIKmQVsgpZhaxCViGrmL3lJ8kqfmdrz88m7pFVyCpkFbIKWYWsQlYhq5BVDGctmv2QTZJVyCpkFbKKLw+u5HQ54zmTAAAAAElFTkSuQmCC">                                                  \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
IIIIIIIIIIIIIIII                                117\
(99.15%)     1\
(0.85%)   
 33                                                  Have you seen a change in your income because of this?\
[character]                                                                                                                                                                                  1\. No, no change\
2\. Yes, it has decreased\
3\. Yes, it has increaesd                                                                                                                                                                                                     26 (22.2%)\
 2 ( 1.7%)\
89 (76.1%)                                                                                                                                                                                                                                                             <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABOCAMAAAD1sh+SAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAIZJREFUaIHt2LERwkAQBEEB+edMFZhgaBxpjZ4I2vg39o7XZMfdgP/Nsh6hK1nP02FhYWFhYWFhYWFhLbE2J8ZkWKXv27pb8dPnJ2KdDKuEVcIqYZWwSlglrBJWCas0OzEmwyq108hlpUPSZWGVsEpYJawSVgmrhFXCKmGVhlmLzQ6yyUZZb2pHdi2RsfR7AAAAAElFTkSuQmCC">                                                                                                                                                                                                                                   IIII \ 
 \ 
IIIIIIIIIIIIIIII                                              117\
(99.15%)     1\
(0.85%)   
 34                                                      Has your quality of life changed due to Agrics?\
[character]                                                                                                                                                                                     1\. Got worse\
2\. Improved a little\
3\. Improved a lot\
4\. No change                                                                                                                                                                                                1 ( 0.8%)\
20 (17.0%)\
93 (78.8%)\
 4 ( 3.4%)                                                                                                                                                                                                                           <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABoCAMAAAAkR/m5AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAK9JREFUaIHt10EKgDAMBdHW3v/OiqAgSu2s8hczJ3iLtCRtRNaqAd/JIrXRe69GvDtYm6zVZJFkkWSRZJFkkWSRZJFkkWSRYk+MyGSRztmaV8Ta5smSJUuWLFmyZMmSJSuUlXliRCaLtDBbFf2/xIpkkWSRZJFkkWSRZJFkkWSRZJF67C4fmSxSLOuasmrJo/uDkLWQLJIskiySLJIskiySLJIsUi4rc5ePTBYplLUDIPikut380+YAAAAASUVORK5CYII=">                                                                                                                                                                                                       \ 
III \ 
IIIIIIIIIIIIIIII \                                               118\
(100%)        0\
(0%)    
 35                                                          How has your quality of life improved?\
[character]                                                           1\. Agrics has helped me to f\
2\. Agrics have helped me to \
3\. Agries have improved my l\
4\. Although I do not sell mu\
5\. Atleast I can manage my f\
6\. Before I used to harvest \
7\. Farming for the whole far\
8\. From the year I joined Ag\
9\. here back I could pay for\
10\. I am able to budget for m\
[ 103 others ]                  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
  1 ( 0.9%)\
103 (91.1%)                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAXxJREFUeJzt17tVREEMBcF9kH/OfFww1NZeoyqCNqQ5mtfnpNe7A/4nq5BVyCpkFbNZz/O8O+Kv76wPWVeyClmFrEJWIauQVcgqZBW7WZu3/CRZxexsrW6irDNZhaxCViGrkFXIKmQVsorZW36SrGJ2tlY3UdaZrEJWIauQVcgqZBWyClnFbtbmF2OSrGJ2tlY3UdaZrEJWIauQVcgqZBWyClnF7C0/SVYxO1urmyjrTFYhq5BVyCpkFbIKWYWsYvaWnySrmJ2t1U2UdSarkFXIKmQVsgpZhaxCVrGbtfnFmCSrmJ2t1U2UdSarkFXIKmQVsgpZhaxCVjF7y0+SVczO1uomyjqTVcgqZBWyClmFrEJWIauYveUnySpms0ZHfvWBkHUmq5BVyCpkFbIKWYWsQlYxe8tPklXMztbqJso6k1XIKmQVsgpZhaxCViGrmL3lJ8kqfmdrz88m7pFVyCpkFbIKWYWsQlYhq5BVDGctmv2QTZJVyCpkFbKKLw+u5HQ54zmTAAAAAElFTkSuQmCC">                                                  \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
IIIIIIIIIIIIIIII                                113\
(95.76%)     5\
(4.24%)   
 36                                                          How has your quality of life worsened?\
[character]                                                                                                                                                                                                               1\. All my chickens died and                                                                                                                                                                                                                                       1 (100.0%)                                                                                                                                                                                                                                                                                                                       <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAAaCAMAAABirVVzAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAD9JREFUSInt17EBACAQg8Do77+zDmBDZQpuAloylTKr0c3afcwizCLMIswizCLMIswizCLMIswiirMa5feovh08xh5nnuEyXgAAAABJRU5ErkJggg==">                                                                                                                                                                                                                                                                                       IIIIIIIIIIIIIIII                                                     1\
(0.85%)      117\
(99.15%) 
 37    On a scale of 0-10, how likely is it that you would recommend Agrics to a friend, where 0 is not at all likely, and 10 is extremely likely? - Group\
[character]                                                                                                                                                  1\. Detractor\
2\. Passive\
3\. Promoter                                                                                                                                                                                                                      4 ( 3.4%)\
42 (35.6%)\
72 (61.0%)                                                                                                                                                                                                                                                         <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABOCAMAAAD1sh+SAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAItJREFUaIHt1zEKgDAQBdEY739nBQmkEGSIS34xc4JX7Ba/nZG13YD3YlnHaDdl7mb1J1nfySLJIskiySLJIskiySLJIskixU6MyGSRptv6uVVWL0mWLFmyZMmSJUuWLFnVrMyJEZksUt1tLVX2iUvJIskiySLJIskiySLJIskiySIFsxKLHWSRhbIu4DFxlaRnF+UAAAAASUVORK5CYII=">                                                                                                                                                                                                                             \ 
IIIIIIIII \ 
IIIIIIIIIIIIIIII                                             118\
(100%)        0\
(0%)    
 38         On a scale of 0-10, how likely is it that you would recommend Agrics to a friend, where 0 is not at all likely, and 10 is extremely likely?\
[numeric]                                                                                                                                      mean (sd) : 8.88 (1.17)\
min < med < max :\
5 < 9 < 10\
IQR (CV) : 2 (0.13)                                                                                                                                                                   5 :  1 ( 0.8%)\
 6 :  3 ( 2.5%)\
 7 :  9 ( 7.6%)\
 8 : 33 (28.0%)\
 9 : 22 (18.6%)\
10 : 50 (42.4%)                                                                                                                                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAACcCAMAAACqRKK2AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAPFJREFUeJzt2FFKA0EQQMHdzf3vbFCQQIzmyZppod4J6qNn6JntMrJtNeDrsEpYpe2yX1utuOvKOg6sJ8MqYZWwSlglrBJWCauEVZrLmrnLjwyrNJa1f7bactP7BfER1o9hlbBKWCWsElYJq4RVwirNZc3c5UeGVbqdrftWso6HYWFhYWFhYWFhYWFNZs18YowMq/T9bJ3Ur1iPT+JJYWFhYWFhYWFhYf131sxdfmRYpTNm629YCw4aFhYWFhYWFhYWFtYJrJlPjJFhlV7yNdJ7xUdSD6uEVcIqYZWwSlglrBJWCau0j93lR4ZVwioNZb0BqkDw91TDSWYAAAAASUVORK5CYII=">                                                                                                                                              \ 
 \ 
II \ 
IIIIIIIIII \ 
IIIIIII \ 
IIIIIIIIIIIIIIII                                  118\
(100%)        0\
(0%)    
 39                                                              Please explain your score...39\
[character]                                                               1\. Agrics has helped my farm\
2\. Agrics has supported my f\
3\. Agrics have helped me man\
4\. Agrics have improved my l\
5\. Agrics is a good group th\
6\. Because the staff at Agri\
7\. Because they give people \
8\. Because we have Agrics we\
9\. Even tomorrow we have a m\
10\. hey offer quality farm in\
[ 62 others ]                        1 ( 1.4%)\
 1 ( 1.4%)\
 1 ( 1.4%)\
 1 ( 1.4%)\
 1 ( 1.4%)\
 1 ( 1.4%)\
 1 ( 1.4%)\
 1 ( 1.4%)\
 1 ( 1.4%)\
 1 ( 1.4%)\
62 (86.1%)                                       <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAX1JREFUeJzt1zFSA0AMBEFj/v9nXDiEQBN5g+4XTCBd6R7fkx6fDvifrEJWIauQVcxmfb18uuKPV9bzKetIViGrkFXIKmQVsgpZhaxiN2vzlp8kq5idrdVNlHUmq5BVyCpkFbIKWYWsQlYxe8tPklXMztbqJso6k1XIKmQVsgpZhaxCViGr2M3a/GJMklXMztbqJso6k1XIKmQVsgpZhaxCViGrmL3lJ8kqZmdrdRNlnckqZBWyClmFrEJWIauQVcze8pNkFbOztbqJss5kFbIKWYWsQlYhq5BVyCp2sza/GJNkFbOztbqJss5kFbIKWYWsQlYhq5BVyCpmb/lJsorZ2VrdRFlnsgpZhaxCViGrkFXIKmQVs7f8JFnFbNboyK8+ELLOZBWyClmFrEJWIauQVcgqZm/5SbKK2dla3URZZ7IKWYWsQlYhq5BVyCpkFbO3/CRZxXu25vxu4hxZhaxCViGrkFXIKmQVsgpZxXDWotkP2SRZhaxCViGr+AHGXuOMnW0ExAAAAABJRU5ErkJggg==">                                                \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
IIIIIIIIIIIIIIII                                72\
(61.02%)     46\
(38.98%)  
 40                                                              Please explain your score...40\
[character]                                                               1\. Agrics is a very good com\
2\. At times the harvest is n\
3\. I am a strong supporter o\
4\. I have even helped some p\
5\. I have recommended others\
6\. I have recommended people\
7\. I have recommended two of\
8\. I have tokd many people b\
9\. I have told a lot of peop\
10\. I have told all the membe\
[ 32 others ]                        1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
32 (76.2%)                                       <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAX5JREFUeJzt1zFOA0AMRcEA978zEQoNovCr8ouZE7zCXnkfX5Me7w74n6xCViGrkFXMZn38eHfHH8+szydZJ7IKWYWsQlYhq5BVyCpkFbtZm7f8JFnF7GytbqKsM1mFrEJWIauQVcgqZBWyitlbfpKsYna2VjdR1pmsQlYhq5BVyCpkFbIKWcVu1uYXY5KsYna2VjdR1pmsQlYhq5BVyCpkFbIKWcXsLT9JVjE7W6ubKOtMViGrkFXIKmQVsgpZhaxi9pafJKuYna3VTZR1JquQVcgqZBWyClmFrEJWsZu1+cWYJKuYna3VTZR1JquQVcgqZBWyClmFrEJWMXvLT5JVzM7W6ibKOpNVyCpkFbIKWYWsQlYhq5i95SfJKmazRkd+9YGQdSarkFXIKmQVsgpZhaxCVjF7y0+SVczO1uomyjqTVcgqZBWyClmFrEJWIauYveUnySp+Z2vMaxPHyCpkFbIKWYWsQlYhq5BVyCqGsxbNfsgmySpkFbIKWcU3NpThvMNamPEAAAAASUVORK5CYII=">                                                \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
IIIIIIIIIIIIIIII                                42\
(35.59%)     76\
(64.41%)  
 41                                                              Please explain your score...41\
[character]                                                                                                                                                                      1\. Agrica has really eased u\
2\. I was a poultry farmer bu\
3\. I would have given more p\
4\. They have fair prices.                                                                                                                                                                         1 (25.0%)\
1 (25.0%)\
1 (25.0%)\
1 (25.0%)                                                                                                                                                                                                                                 <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABoCAMAAAAkR/m5AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAKhJREFUaIHt17ENwDAMxEAn3n/nZAA1rMSCNwEL2cCfq3S2A2ZlEec+Rn/W61MWURZRFlEWURZRFlEWURZRFiHOMtIOMiVt1vYZjbwvcbthUBZRFlEWURZRFlEWURZRFlEW0XxFyiK0t2V9idsNg7KIsoiyiLKIsoiyiLKIsghxlpF2+SiVRWhP3vpBbDcMyiLKIsoiyiLKIsoiyiLKIsRZRtrlo1QW8QGZ2X9/log28AAAAABJRU5ErkJggg==">                                                                                                                                                                                   IIIIIIIIIIIIIIII \ 
IIIIIIIIIIIIIIII \ 
IIIIIIIIIIIIIIII \ 
IIIIIIIIIIIIIIII                       4\
(3.39%)      114\
(96.61%) 
 42                                                    Have you experienced challenges so far with Agrics?\
[character]                                                                                                                                                                                                               1\. No\
2\. Yes                                                                                                                                                                                                                                       77 (65.2%)\
41 (34.8%)                                                                                                                                                                                                                                                                                           <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAA0CAMAAABfCzE1AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAGJJREFUWIXt17ENwDAMA0E73n/nZIA0BISExf0EV0gF16ls/Q14b53d2MO6+sJKwkrCSsJKwkrCSsJKwkrCSsJK2rXLpzKspPnbmmINPxEWFhYWFhYWFhYW1keszolRWSnrBkvBRQp1T7TxAAAAAElFTkSuQmCC">                                                                                                                                                                                                                                                           IIIIIIIIIIIIIIII \ 
IIIIIIII                                               118\
(100%)        0\
(0%)    
 43                                                                    Please explain...43\
[character]                                                                    1\. At times cash is a proble\
2\. Dealing with farmers is a\
3\. his year here was delay i\
4\. I applied for 10 specific\
5\. I applied for a tarpulin \
6\. I applied for op dressing\
7\. I filled a complain about\
8\. I gave sh 3500 for tarpau\
9\. I have already paid for s\
10\. I ordered for tents but t\
[ 32 others ]                        1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
 1 ( 2.4%)\
32 (76.2%)                                       <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAX5JREFUeJzt1zFOA0AMRcEA978zEQoNovCr8ouZE7zCXnkfX5Me7w74n6xCViGrkFXMZn38eHfHH8+szydZJ7IKWYWsQlYhq5BVyCpkFbtZm7f8JFnF7GytbqKsM1mFrEJWIauQVcgqZBWyitlbfpKsYna2VjdR1pmsQlYhq5BVyCpkFbIKWcVu1uYXY5KsYna2VjdR1pmsQlYhq5BVyCpkFbIKWcXsLT9JVjE7W6ubKOtMViGrkFXIKmQVsgpZhaxi9pafJKuYna3VTZR1JquQVcgqZBWyClmFrEJWsZu1+cWYJKuYna3VTZR1JquQVcgqZBWyClmFrEJWMXvLT5JVzM7W6ibKOpNVyCpkFbIKWYWsQlYhq5i95SfJKmazRkd+9YGQdSarkFXIKmQVsgpZhaxCVjF7y0+SVczO1uomyjqTVcgqZBWyClmFrEJWIauYveUnySp+Z2vMaxPHyCpkFbIKWYWsQlYhq5BVyCqGsxbNfsgmySpkFbIKWcU3NpThvMNamPEAAAAASUVORK5CYII=">                                                \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
IIIIIIIIIIIIIIII                                42\
(35.59%)     76\
(64.41%)  
 44                                                             Has the challenge been resolved?\
[character]                                                                                                                                                                                                                         1\. No\
2\. Yes                                                                                                                                                                                                                                       26 (61.9%)\
16 (38.1%)                                                                                                                                                                                                                                                                                           <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAA0CAMAAABfCzE1AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAGJJREFUWIXt17ENwDAMA0E73n/nZIA0RCCExf0EV0gF16ls/Q14b53d2MO6+sJKwkrCSsJKwkrCSsJKwkrCSsJK2rXLpzKspNnb+sIafCgsLCwsLCwsLCwsrEFW58SorJR1A7lKQ+p11efgAAAAAElFTkSuQmCC">                                                                                                                                                                                                                                                           IIIIIIIIIIIIIIII \ 
IIIIIIIII                                             42\
(35.59%)     76\
(64.41%)  
 45                                     How easy was it to get the help you wanted from Agrics to resolve the challenge?\
[character]                                                                                                                                           1\. Agree\
2\. Disagree\
3\. Neutral\
4\. Somewhat agree\
5\. Somewhat disagree\
6\. Strongly agree\
7\. Strongly disagree                                                                                                                                                     4 ( 9.5%)\
 2 ( 4.8%)\
13 (30.9%)\
10 (23.8%)\
 4 ( 9.5%)\
 6 (14.3%)\
 3 ( 7.1%)                                                                                                                                                             <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAC2CAMAAAAMc4TmAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAPBJREFUeJzt2tENwjAQRMEE+u+ZBkDJIuu8iHkVzIdPOls+npUduwHvw0rCSqplnVljrEcSFhYWFhYWFhYW1j+yOnf5yrCSPp+t3aytI4eFhYWFhYWFhYWF9TWr84pRGVZS/DQyU/qQNBNWElYSVhJWElYSVhJWElYSVtJZu8tXhpW05WzdYs3PGRYWFhYWFhYWFhbWClbnFaMyrKTaH+Ct/+WxsLCwsLCwsLCwelidu3xlWEmr3iDWs6JJHBpQLCwsLCwsLCwsLKxrVucVozKspFtnawtrfMywsLCwsLCwsLCwfo3VuctXhpWElYSV9AIweBJaoHpRrQAAAABJRU5ErkJggg==">                                                                                                                                     IIII \ 
II \ 
IIIIIIIIIIIIIIII \ 
IIIIIIIIIIII \ 
IIII \ 
IIIIIII \ 
III                        42\
(35.59%)     76\
(64.41%)  
 46                                                   How many members does the household have? (number only)\
[numeric]                                                                                                                                                                                mean (sd) : 7.58 (2.65)\
min < med < max :\
3 < 7 < 20\
IQR (CV) : 3 (0.35)                                                                                                                                                                                                           13 distinct values                                                                                                                                                                                                                                       <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABkCAMAAABThTnCAAAADFBMVEX9/v2mpqby8vL9/v28xacEAAAABHRSTlP///8AQCqp9AAAALJJREFUaIHt2MEKwjAURcHY/v8/u3GhNUVvjekrzNkFshheIJC0tWTtbEA/rKQ+67ZpMmqXtbyE9QgrCSsJKwkrCSsJKwkrCSsJKwkr6dKs6c/G71jTh4eFhYWFhYWFhYWFhYWFhTWV9f8/iUOsZbPGwsLCwsLCwsLCwsLCwroAa/wjewhr/PBKs94+O35iDTjU1pvOB0e2+9D0sLCwsNbOlVmE1d29c8uf2BOrXFhJRVl3Duae1D++/h0AAAAASUVORK5CYII=">                                                                                                                                                                                           \
\ \ :\
\ \ : .\
\ \ : :\
\ \ : : :\
. : : : : .                                    118\
(100%)        0\
(0%)    
 47                                                               What is your marital status?\
[character]                                                                                                                                                                                                                 1\. Married\
2\. Other\
3\. Single                                                                                                                                                                                                                       111 (94.1%)\
  1 ( 0.8%)\
  6 ( 5.1%)                                                                                                                                                                                                                                                           <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABOCAMAAAD1sh+SAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAIZJREFUaIHt2LENgDAAxMAE9t8ZOlJEQq7iwjeB2/9xK43TAXvarGn0Zl0+ZRFlEWURZRFlEWURZRFlEWUR4iwj7SBT0mbNebphoyyiLKIsoiyiLKIsoiyiLKIsoixCm6VUFrFcI6dTVt+RVNa/soiyiLKIsoiyiLKIsoiyiLII7cRQKot4ABnheaVlVb5yAAAAAElFTkSuQmCC">                                                                                                                                                                                                                                      IIIIIIIIIIIIIIII \ 
 \                                                  118\
(100%)        0\
(0%)    
 48                                                        How many children do you have? (number only)\
[numeric]                                                                                                                                                                                      mean (sd) : 5.15 (2.59)\
min < med < max :\
0 < 5 < 18\
IQR (CV) : 2 (0.5)                                                                                                                                                                                                            14 distinct values                                                                                                                                                                                                                                         <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABkCAMAAABThTnCAAAADFBMVEX9/v2mpqby8vL9/v28xacEAAAABHRSTlP///8AQCqp9AAAAK5JREFUaIHt2MsKgzAURVGr///PnRTaxggeyWuw9kwcZHHBkLgdS7bNBtTDSqqzXkWDUZes/S+sT1hJWElYSVhJWElYSVhJWElYSVhJWEn3WMNvs/dYw4eHhYWFhYWFhYWFhYWFhYWFhYWFhYXViNX/z/Mj1l48Y2FhYQ1nnTbIRVjlQlhYWFhYE1jtz9BNWO2H14PVYHo9WOVrLCysb/Xv9uLQPLEf1nJhJS3KegPh2Z+MEb5kfgAAAABJRU5ErkJggg==">                                                                                                                                                                                             \
\ \ :\
\ \ : .\
\ \ : :\
\ \ : : .\
: : : : . .                                    118\
(100%)        0\
(0%)    
 49                                        What is the highest school grade that the female head/spouse has completed?\
[character]                                                                                                                                      1\. None, or pre-school\
2\. Primary standard 7\
3\. Primary standard 8, or se\
4\. Primary standards 1-6\
5\. Secondary form 4 or highe                                                                                                                                                          3 ( 2.5%)\
18 (15.2%)\
57 (48.3%)\
 9 ( 7.6%)\
31 (26.3%)                                                                                                                                                                                                     <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAACCCAMAAACTmMFdAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAMZJREFUeJzt2FEKAjEQRMF1vf+dFUTYD4O2aNJovRMUJAOZbOfKttWAx2El1bJO91ZTjl1Z+y2s52ElYSVhJWElYSVhJWElYSVhJdWuGJVhJR3u1ovNYu1RWFhYWFhYWFhYWH/I6nzLV4aVlN+tKcWTOCWsJKwkrCSsJKwkrCSsJKwkrKRiVmO1C1lltazh+S5mjaYBCwsLCwsLCwsLC6ub1bliVIaV9I2vkc+wBpP4dlhYWFhYWFhYWFg/x+p8y1eGlYSVdAGqFcbrFueLagAAAABJRU5ErkJggg==">                                                                                                                                                                              \ 
IIIII \ 
IIIIIIIIIIIIIIII \ 
II \ 
IIIIIIII                                      118\
(100%)        0\
(0%)    
 50                                   What kind of business is the main occupation of the male head/spouse connected with?\
[character]                                                                                                                                                          1\. Agriculture, hunting, for\
2\. Any other\
3\. Does not work\
4\. No male head/spouse                                                                                                                                                                                       47 (39.8%)\
53 (44.9%)\
 7 ( 5.9%)\
11 ( 9.3%)                                                                                                                                                                                                                               <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABoCAMAAAAkR/m5AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAKhJREFUaIHt2EEKAyEQRFEz3v/O2YaZhlAra+D9EzzQFnXtytZpwBxW0tqfhgbWdT6sJKwkrCSsJKwkrCSsJKwkrKQXsRp6sirDSirZW/c6JvEeVhJWElYSVhJWElYSVhJWElZSMaux2gdZZbWscW0LWNMkYGFhYWFhYWFhYWH9sDrv8pVhJdWy/v1SnGINB8TxswILCwsLCwsLCwuritV5l68MK6mU9QWlHpcCkvboQQAAAABJRU5ErkJggg==">                                                                                                                                                                                                  IIIIIIIIIIIIII \ 
IIIIIIIIIIIIIIII \ 
II \ 
III                                     118\
(100%)        0\
(0%)    
 51                                   How many habitable rooms does this household occupy in its main dwelling? (number only)\
[numeric]                                                                                                                                                                mean (sd) : 3.23 (1.18)\
min < med < max :\
1 < 3 < 7\
IQR (CV) : 1 (0.37)                                                                                                                                                              1 :  2 ( 1.7%)\
2 : 27 (22.9%)\
3 : 58 (49.1%)\
4 : 14 (11.9%)\
5 :  8 ( 6.8%)\
6 :  8 ( 6.8%)\
7 :  1 ( 0.8%)                                                                                                                                     <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAC2CAMAAAAMc4TmAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAQBJREFUeJzt10sOwkAMRMEE7n9noiA2fMS0GDG9qHeCWtiSvV0r21YD3oeVhJVUy9rPVjueOliXI6yhsJKwkrCSsJKwkrCSsJKwknpZnbd8ZVhJj9n6tfmsy4SwsLCwsLCwsLCwsP7P6nwxKsNKmjVbk5u0iZPDSsJKwkrCSsJKwkrCSsJKwkraa2/5yrCSBmdrAWtkM7CwsLCwsLCwsLCw+lidL0ZlWEmfZms9q2L1sLCwsLCwsLCwsJpZnbd8ZVhJtbPVuolYWFhYWFhYWFhYWF9YnS9GZVhJ99larXjp3ESswbCSsJKwkrCSsJKwkrCSsJJ6WZ23fGVYSVhJWEk3BF4ikYXRFEAAAAAASUVORK5CYII=">                                                                                                                                      \ 
IIIIIII \ 
IIIIIIIIIIIIIIII \ 
III \ 
II \ 
II \                                   118\
(100%)        0\
(0%)    
 52                                                What is the main source of lighting fuel for the household?\
[character]                                                                                                                                                                     1\. Collected firewood, purch\
2\. Electricity, solar or gas\
3\. Paraffin, candles, biogas                                                                                                                                                                                           36 (30.5%)\
70 (59.3%)\
12 (10.2%)                                                                                                                                                                                                                                                                 <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABOCAMAAAD1sh+SAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAH5JREFUaIHt18EJgDAQRNGo/fdsAyoMLGYO71fwINnDrKuytRvwXC3rmGyQdc6FhYWFhYWFhYWFhfUjq3NiVIaVNPy3ppq9xKmwkrCSsJKwkrCSsJKwkrCSsJKKWY3VDrLKalkfL7yV9X4PWFhYWFhYWFhYWFjNrM6JURlW0g2mV3DtO1BWBQAAAABJRU5ErkJggg==">                                                                                                                                                                                                                                    IIIIIIII \ 
IIIIIIIIIIIIIIII \ 
II                                            118\
(100%)        0\
(0%)    
 53                                                  Would you mind sharing your age with me? (number only)\
[character]                                                                                                                                                                      1\. 48\
2\. 40\
3\. 60\
4\. 45\
5\. 65\
6\. 32\
7\. 42\
8\. 50\
9\. 52\
10\. 54\
[ 38 others ]                                                                                                                                           9 ( 7.6%)\
 7 ( 5.9%)\
 6 ( 5.1%)\
 5 ( 4.2%)\
 5 ( 4.2%)\
 4 ( 3.4%)\
 4 ( 3.4%)\
 4 ( 3.4%)\
 4 ( 3.4%)\
 4 ( 3.4%)\
66 (55.9%)                           <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAY9JREFUeJzt3TFOA1EQBUED978zQkhojQ3ejvYF1SeoYMaan6xvH5PdrgY8D6uEVcIqYZVmWW/PGmC9P4aFhYWFhYWFhYWFdWRt3vKTYZWezNbVpK8eNxHr77BKWCWsElYJq4RVwiphlXZZm7f8ZFilh9m6GvTd703E+i+sElYJq4RVwiphlbBKWCWs0uwTYzKs0v1sXa356W4TsV6EVcIqYZWwSlglrBJWCau0y9q85SfDKs3O1uomYp0Oq4RVwiphlbBKWCWsElZp9pafDKt0nK2rLYcOm4j1MqwSVgmrhFXCKmGVsEpYJazS7BNjMqzS7GytbiLW6bBKWCWsElYJq4RVwiphlWZv+cmwSrOztbqJWKfDKmGVsEpYJawSVgmrhFWaveUnwyrNskZHfvUHAut0WCWsElYJq4RVwiphlbBKs7f8ZFil2dla3USs02GVsEpYJawSVgmrhFXCKs3e8pNhlW6Pf7C60N33t2bCKmGVsEpYJawSVgmrhFXCKg2zFpt9kE2GVcIqYZWwSp9QiduqNXRzRAAAAABJRU5ErkJggg==">                                II \ 
I \ 
I \ 
I \ 
I \ 
 \ 
 \ 
 \ 
 \ 
 \ 
IIIIIIIIIIIIIIII                              118\
(100%)        0\
(0%)    
 54                                                      Is there anything else you would like to share?\
[character]                                                                          1\. Thank you.\
2\. No comment\
3\. Nothing to share\
4\. According to me Agrics ha\
5\. According to me I would l\
6\. Agries is a good company \
7\. Although there are a few \
8\. Am okay with what Agries \
9\. Can l apply for both ligh\
10\. Continue supplying farm p\
[ 80 others ]                                          14 (11.9%)\
12 (10.2%)\
 5 ( 4.2%)\
 1 ( 0.8%)\
 1 ( 0.8%)\
 1 ( 0.8%)\
 1 ( 0.8%)\
 1 ( 0.8%)\
 1 ( 0.8%)\
 1 ( 0.8%)\
80 (67.8%)                                     <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEeCAMAAABfSxzRAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAYBJREFUeJzt3TFuw0AQBEHZ+v+fDTkSIBO+jjhB9Qsq2CX2Ij6ekz3uBvwdVgmrhFXCKs2yvq67lfV9FRYWFhYWFhYWFhbWc/iWnwyrdDlbt7PWthALCwsLCwsLCwtrjrV5y0+GVXqfrbstb71tIta/YZWwSlglrBJWCauEVcIqYZVmnxiTYZV+Z+tuxGevTcQ6DauEVcIqYZWwSlglrBJWaZe1ectPhlWana3VTcQ6DquEVcIqYZWwSlglrBJWafaWnwyrNDtbq5uIdRxWCauEVcIqYZWwSlglrNIua/OJMRlWaXa2VjcR6zisElYJq4RVwiphlbBKWKXZW34yrNLsbK1uItZxWCWsElYJq4RVwiphlbBKs7f8ZFilWdboyK9+ILCOwyphlbBKWCWsElYJq4RVmr3lJ8Mqzc7W6iZiHYdVwiphlbBKWCWsElYJqzR7y0+GVXpc/WD13l6buBdWCauEVcIqYZWwSlglrBJWaZi12OyDbDKsElYJq4RV+gHofd/YDBlPQAAAAABJRU5ErkJggg==">                                           II \ 
II \ 
I \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
 \ 
IIIIIIIIIIIIIIII                              118\
(100%)        0\
(0%)    
 55                                                 Can we share your name and this information with Agrics?\
[character]                                                                                                                                                                                                             1\. No\
2\. Yes                                                                                                                                                                                                                                       5 ( 4.2%)\
113 (95.8%)                                                                                                                                                                                                                                                                                   <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAA0CAMAAABfCzE1AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAG1JREFUWIXt17ENwCAQBMEH+u/ZFkK2LBF4Iy7YqWCD/+BqRKrTAXs12nK65OPO6pNZP5hFmEWYRZhFmEWYRZhFmEWYReRmZS6fSGYR721FeT4xilmEWYRZhFmEWYRZhFmEWYRZRHBWothBFukCNBVMV5/oLBgAAAAASUVORK5CYII=">                                                                                                                                                                                                                                                        \ 
IIIIIIIIIIIIIIII                                                   118\
(100%)        0\
(0%)    
 56                                                                          Gender\
[character]                                                                                                                                                                                                                                   1\. Female\
2\. Male                                                                                                                                                                                                                                     76 (64.4%)\
42 (35.6%)                                                                                                                                                                                                                                                                                           <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAA0CAMAAABfCzE1AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAGJJREFUWIXt17ERgDAQA0Eb998zFECiGRsU7FWwwX+gsSobfwPeG2s29rCuvrCSsJKwkrCSsJKwkrCSsJKwkrCSZu3yqQwr6chtbWHt/yMsLCwsLCwsLCwsrC9YnROjslLWDSXjRMIPB79pAAAAAElFTkSuQmCC">                                                                                                                                                                                                                                                           IIIIIIIIIIIIIIII \ 
IIIIIIII                                               118\
(100%)        0\
(0%)    
 57                                                           Time taken for interview (number only)\
[numeric]                                                                                                                                                                                        mean (sd) : 12.31 (2.05)\
min < med < max :\
8 < 12 < 18\
IQR (CV) : 4 (0.17)                                                                                                                                8 :  1 ( 0.8%)\
 9 :  2 ( 1.7%)\
10 : 31 (26.3%)\
11 : 12 (10.2%)\
12 : 20 (17.0%)\
13 : 14 (11.9%)\
14 : 13 (11.0%)\
15 : 22 (18.6%)\
16 :  2 ( 1.7%)\
18 :  1 ( 0.8%)                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAAEECAMAAAD9Bj0sAAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAWxJREFUeJzt3VFKAwEQBcGN3v/OiiiICNqJa55YfYL6mAmzgWyOx8mOewM+D6uEVcIqYZWOx8tL93Z86Jn18BzWt8IqYZWwSlglrBJWCauEVdplbd7yk2GV3mZrbMBeN/FhbB2xSlglrBJWCauEVcIqYZWwSrO3/GRYpVnWZbH3HxA7YZWwSlglrBJWCauEVcIqYZUus7f8ZFilm2brVNb1+4KFhYWFhYWFhYX1T1ibt/xkWKVf+A7iStbVm3jivmJhYWFhYWFhYWFhfc3afMSYDKv0M7N1ButOy4aFhYWFhYWFhYX1d1ibt/xkWKWbZ+s01tgSYmFhYWFhYWFhYe2xNm/5ybBKv/mT3Ma6aRNPWlosLCwsLCwsLCwsrK9Zm48Yk2GVjtUXIq++Phrr22GVsEpYJawSVgmrhFXCKs3e8pNhlY7VP1i9jC3hS1glrBJWCauEVcIqYZWwSlil2Vt+MqwSVgmrhFUaZT0BoKOTDQBKaRQAAAAASUVORK5CYII=">                                          \ 
I \ 
IIIIIIIIIIIIIIII \ 
IIIIII \ 
IIIIIIIIII \ 
IIIIIII \ 
IIIIII \ 
IIIIIIIIIII \ 
I \               118\
(100%)        0\
(0%)    
 58                                         How willing would you say the respondent was to complete this interview?\
[character]                                                                                                                                                                1\. Extremely willing\
2\. Neither willing nor unwil\
3\. Somewhat unwilling\
4\. Willing                                                                                                                                                                                      87 (73.7%)\
 5 ( 4.2%)\
 1 ( 0.8%)\
25 (21.2%)                                                                                                                                                                                                                           <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABoCAMAAAAkR/m5AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAK9JREFUaIHt2UEKwjAUANHY3v/Otm4MKNjZNAPOnOBB8uGHjF3ZWA34XizS2B/GDtbmKxYpFikWKRYpFikWKRYpFikWScwypn2QKdOy3ge62jI1TWKsn8UixSLFIsUixSLFIsUixSLFImmfGMpikV53azXis3MSY10tFikWKRYpFikWKRYpFikWycty7vLKYpG0LPLhfidru1ysWLFixYoVK1asWH/Kcu7yymKRpKwns+ejFIT/RI8AAAAASUVORK5CYII=">                                                                                                                                                                                                     IIIIIIIIIIIIIIII \ 
 \ 
 \ 
IIII                                             118\
(100%)        0\
(0%)    
 59                                               Regarding the interaction, would you say the respondent was:\
[character]                                                                                                                                                                        1\. Neither pleased nor unple\
2\. Somewhat pleased\
3\. Unpleased\
4\. Very pleased                                                                                                                                                                                          1 ( 0.8%)\
22 (18.6%)\
 1 ( 0.8%)\
94 (79.7%)                                                                                                                                                                                                                               <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAABoCAMAAAAkR/m5AAAADFBMVEX9/v2mpqb39/f9/v0TNkn1AAAABHRSTlP///8AQCqp9AAAAKpJREFUaIHt2LENwzAQBEHR6r9nG05tQNxE+mC2ggkYPO84R3Y8DfgfVuk411pPI377sF5Yu2GVsEpYJawSVgmrhFXCKmGVxn4xRoZV+r6ty55gvS7DwsLCwsLCwsLCwprImvnFGBlWaew0MnVIwtoOq4RVwiphlbBKWCWsElZp7C0/MqzSWNbONHJ7W0PS7WGVsEpYJawSVgmrhFXCKmGV1thbfmRYpaGsN+ZXpOXu1m6vAAAAAElFTkSuQmCC">                                                                                                                                                                                                          \ 
III \ 
 \ 
IIIIIIIIIIIIIIII                                              118\
(100%)        0\
(0%)    

## something fancy

```r
var_colz = c("Where did you buy them?", "What were the inputs you purchased?", "Which alternative?", "Why did you select Agrics?", 
             "How did you pay for the Agrics package that you purchased in the last 12 months? - Other - Text", 
             "Please explain...32", "How has your quality of life improved?", "How has your quality of life worsened?", 
             "Please explain your score...39", "Please explain your score...40", "Please explain your score...41",
             "Please explain...43", "Regarding the interaction, would you say the respondent was:"
             )

map( var_colz, ~ dirty.Wordcloud.it( df[.x] ) )
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
