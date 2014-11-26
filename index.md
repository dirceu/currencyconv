---
title       : A Currency Converter built with R and Shiny
subtitle    : https://dirceu.shinyapps.io/currencyconv
author      : Dirceu Pereira Tiegs
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## The project

This project is a web app built with R and Shiny that allow users to convert an amount in one currency to another. For example: 1000.00 USD in BRL: BRL 2603.00.

The idea here is to use an external API to get the currency rates we need to calculate the amount in the different currency.

--- .class #id 

## The API

The external API we are using is hosted on http://rate-exchange.herokuapp.com. It is a simple API: you provide two currencies and it returns a JSON data structure with the rates it found. E.g.:


```r
library(rjson)
url <- "http://rate-exchange.herokuapp.com/fetchRate?from=CAD&to=USD"
data <- fromJSON(file = url, method = "C")
data
```

```
## $To
## [1] "USD"
## 
## $From
## [1] "CAD"
## 
## $Rate
## [1] "0.8856"
```

--- .class #id 

## Next Steps

* Build a parser to allow users to input data in natural language, as is already possible in Google: "1000 USD in BRL" (https://google.com/search?q=1000%20USD%20in%20BRL)
* Automatically use another API if there is any problems with the current one
* Cache daily currencies

--- .class #id 

## Thank You!

Thank you for watching this presentation. You can see the app here:

https://dirceu.shinyapps.io/currencyconv

The source code can be found at:

https://github.com/dirceu/currencyconv

And you can contact me here:

http://dirceu.info/blog