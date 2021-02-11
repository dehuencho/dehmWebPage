---
title: Creating a Gif with geospatial temporal data in R
author: Daniel Huencho
date: '2021-01-27'
slug: creating-a-gif-with-geospatial-temporal-data-in-r
categories: ["R"]
tags: ["R", "rspatial", "sf", "maps", "gif"]
subtitle: ''
summary: ''
authors: []
lastmod: '2021-01-27T12:54:44-03:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: ["R"]
---

<script src="{{< blogdown/postref >}}index_files/htmlwidgets/htmlwidgets.js"></script>

<script src="{{< blogdown/postref >}}index_files/plotly-binding/plotly.js"></script>

<script src="{{< blogdown/postref >}}index_files/typedarray/typedarray.min.js"></script>

<script src="{{< blogdown/postref >}}index_files/jquery/jquery.min.js"></script>

<link href="{{< blogdown/postref >}}index_files/crosstalk/css/crosstalk.css" rel="stylesheet" />

<script src="{{< blogdown/postref >}}index_files/crosstalk/js/crosstalk.min.js"></script>

<link href="{{< blogdown/postref >}}index_files/plotly-htmlwidgets-css/plotly-htmlwidgets.css" rel="stylesheet" />

<script src="{{< blogdown/postref >}}index_files/plotly-main/plotly-latest.min.js"></script>

## Introduction

## Reading the data

Tratemos de hacer un gáfico para testear

``` r
y <- 1:100 + rnorm(n = 100, mean = 0, sd = 5)
x <- 1:100

ggplot(data = data.frame(y=y,x=x),
       aes(x,y)) +
    geom_point() +
    theme_bw()
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-1-1.png" width="672" />

Tratemos otra cosa

``` r
 plot_ly(data = data.frame(y=y,x=x),
         x = ~x) %>%
  add_trace(y=~y, name = "Tr1", mode = 'markers', type = 'scatter')
```

<div id="htmlwidget-1" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-1">{"x":{"visdat":{"b60269ac4f":["function () ","plotlyVisDat"]},"cur_data":"b60269ac4f","attrs":{"b60269ac4f":{"x":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"y":{},"name":"Tr1","mode":"markers","type":"scatter","inherit":true}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"xaxis":{"domain":[0,1],"automargin":true,"title":"x"},"yaxis":{"domain":[0,1],"automargin":true,"title":"y"},"hovermode":"closest","showlegend":false},"source":"A","config":{"showSendToCloud":false},"data":[{"x":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100],"y":[4.13486407883334,-0.229980952192033,3.87808979065153,8.84917647328853,11.4303008168869,4.19007936767314,10.6273274650242,6.62265452591668,1.96546566391271,7.88199839157871,1.30499456827762,11.2376352865764,10.1000097727825,15.5925772842804,17.4174260259015,11.9689631846072,22.8797939229252,24.1669301633787,19.7677652042622,22.8744190318516,24.2007875350956,26.5889057766963,28.7877559324651,23.575252725119,22.9346123890074,20.0575981320781,19.7919351993861,22.0242661705651,33.1708575463535,38.8645497102375,35.0894656930583,44.8404077108276,31.751563168203,38.1333194002525,29.7070653790511,38.0014322031672,31.4832907533271,40.8785187537617,47.0113271617459,32.2053267165379,39.793958501037,31.5167495025757,42.1682140812154,42.2704001633837,46.8723370120606,42.2319020154531,43.0022607663574,54.3621116969137,51.9481138154654,55.061223001383,49.5609916317994,52.0831860910954,50.7667887301444,56.4157958328022,63.3847847760026,55.9236240945876,50.4634379114742,57.1206835106696,68.0718408149177,64.4924591946564,61.2935892598346,56.9369024125716,64.7810400768646,59.8102279919411,65.7187579672807,61.2177109417349,75.0396634726466,70.9430812848205,68.6175463511337,69.4181878511822,73.4017824042717,66.988758984403,71.3777172645062,69.6963436039529,76.8269438404172,79.0213251276042,75.633899273716,77.8960367534279,78.4153012905534,80.9573525550452,81.0327508147178,93.1144117793147,93.1406458434082,89.9126924392285,71.5402922318434,84.9072090981212,84.3832178056782,79.7572302890716,87.2039953802051,86.3565609583315,84.0933065488155,87.4491491412465,97.9521444763426,94.2013815611828,98.7252354405278,101.614576423086,97.9759544320139,101.336945580646,101.46802997284,104.527819583508],"name":"Tr1","mode":"markers","type":"scatter","marker":{"color":"rgba(31,119,180,1)","line":{"color":"rgba(31,119,180,1)"}},"error_y":{"color":"rgba(31,119,180,1)"},"error_x":{"color":"rgba(31,119,180,1)"},"line":{"color":"rgba(31,119,180,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>

## Preprocess

## Ploting

## Gif creation
