---
title: First post rmarkdown
author: ''
date: '2021-01-22'
slug: first-post-rmarkdown
categories: []
tags: []
subtitle: ''
summary: ''
authors: []
lastmod: '2021-01-22T23:13:24-03:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---

<script src="{{< blogdown/postref >}}index_files/htmlwidgets/htmlwidgets.js"></script>

<script src="{{< blogdown/postref >}}index_files/plotly-binding/plotly.js"></script>

<script src="{{< blogdown/postref >}}index_files/typedarray/typedarray.min.js"></script>

<script src="{{< blogdown/postref >}}index_files/jquery/jquery.min.js"></script>

<link href="{{< blogdown/postref >}}index_files/crosstalk/css/crosstalk.css" rel="stylesheet" />

<script src="{{< blogdown/postref >}}index_files/crosstalk/js/crosstalk.min.js"></script>

<link href="{{< blogdown/postref >}}index_files/plotly-htmlwidgets-css/plotly-htmlwidgets.css" rel="stylesheet" />

<script src="{{< blogdown/postref >}}index_files/plotly-main/plotly-latest.min.js"></script>

## This is a title

Tratemos de hacer un gáfico

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
<script type="application/json" data-for="htmlwidget-1">{"x":{"visdat":{"13183dfb111":["function () ","plotlyVisDat"]},"cur_data":"13183dfb111","attrs":{"13183dfb111":{"x":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"y":{},"name":"Tr1","mode":"markers","type":"scatter","inherit":true}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"xaxis":{"domain":[0,1],"automargin":true,"title":"x"},"yaxis":{"domain":[0,1],"automargin":true,"title":"y"},"hovermode":"closest","showlegend":false},"source":"A","config":{"showSendToCloud":false},"data":[{"x":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100],"y":[4.79444764707318,-1.95768774676931,-3.91241989871038,10.5649418171778,4.14904557951151,9.71189389633554,2.66681218749501,17.6451078440691,-0.239041671779741,8.44083989075589,3.17323563948071,12.4683304147891,11.8437462348676,21.6786169372309,11.8518963738313,9.35960126738705,19.4395797106537,24.000479386354,22.1229549465483,21.078174558235,11.7838609308885,32.6499354697443,23.8569435830738,26.7411840369743,19.5370730682176,19.0001187335597,18.2006125380367,27.5218533795612,36.2442112394961,27.296049525818,29.0720866283248,27.0853540772616,40.7990871499772,42.9375378173669,36.1306768010327,35.834115364366,30.9839950147845,35.8021978919302,38.1071952713463,37.8486449001554,43.5073693560116,39.569583849117,42.421190555572,41.504979835165,49.3452452475619,40.2526367262266,41.6191301876976,48.3960352842118,38.8607945998153,55.1903580760647,53.37933599986,54.553518787467,50.6561055404239,55.8454855009053,60.5705039137162,60.693804300684,60.4586659636595,60.6773061640277,52.2476310260324,64.7695584290866,59.7398348144272,65.1621711741043,62.6232960675326,64.0278911222568,66.3166850361818,65.4622283309765,72.6639998632901,76.7630634445525,79.0783885304227,75.1175219034582,68.5557714880472,75.0251478615756,70.8137089484105,68.9338512480521,69.0702861232503,74.5496470191949,75.5887288102351,81.0729628533709,80.1933617621956,84.3086827019598,81.4300974689655,87.949915898148,76.463474220348,77.5507006761305,85.221723745095,84.6683678325178,87.2873824019778,78.2264687980714,80.1025305275506,94.4613489278565,94.8779604505204,87.414048440847,90.6081755414118,97.2746629864429,101.269733847345,96.7661197234753,98.8928241783547,96.96808406351,94.5430018354597,96.9827014149955],"name":"Tr1","mode":"markers","type":"scatter","marker":{"color":"rgba(31,119,180,1)","line":{"color":"rgba(31,119,180,1)"}},"error_y":{"color":"rgba(31,119,180,1)"},"error_x":{"color":"rgba(31,119,180,1)"},"line":{"color":"rgba(31,119,180,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
