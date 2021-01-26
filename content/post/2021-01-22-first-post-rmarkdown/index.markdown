---
title: First post rmarkdown
author: ''
date: '2021-01-22'
slug: first-post-rmarkdown
categories: ["R"]
tags: ["R Markdown", "plot", "regression"]
subtitle: ''
summary: ''
authors: []
lastmod: '2021-01-22T23:13:24-03:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: ["First posts"]
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
<script type="application/json" data-for="htmlwidget-1">{"x":{"visdat":{"5fb0228613b5":["function () ","plotlyVisDat"]},"cur_data":"5fb0228613b5","attrs":{"5fb0228613b5":{"x":{},"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"y":{},"name":"Tr1","mode":"markers","type":"scatter","inherit":true}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"xaxis":{"domain":[0,1],"automargin":true,"title":"x"},"yaxis":{"domain":[0,1],"automargin":true,"title":"y"},"hovermode":"closest","showlegend":false},"source":"A","config":{"showSendToCloud":false},"data":[{"x":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100],"y":[7.73747562900984,0.55369373096204,9.2479607775147,4.32911508249353,5.2907009387654,12.3635034211904,1.40281881331378,7.30932475341816,2.58022591924438,8.82002490057601,19.1664818789158,16.0882035598413,14.8613221912223,20.1712130365316,26.5602325602788,19.1593311844673,27.0062646788751,22.0615537712899,19.5006722942002,25.1074464342726,31.0446513044614,18.4062567191373,14.6997596970242,28.5748035423786,22.8058359264099,27.4681387775162,33.773828856687,27.0963749218516,31.3420646388382,33.321148880387,34.1742555991498,25.7529923021689,38.8235543584166,37.192846120765,29.8356057095404,44.7810096398134,37.8205560408501,26.2630338454514,38.4873982868334,40.3635708223958,37.6220339614097,42.6381730830288,34.8690766563011,37.3352571018335,42.081327213652,48.6378279005136,49.0320459790395,42.8125992673282,43.9762881786337,51.0110922222928,56.0584431770733,50.8577045705321,58.8720119942425,58.705706687982,50.0123818207801,53.9283998677536,60.9427004457076,53.4032343234447,68.2140015797805,57.2290441934433,54.316790283057,62.0340885761805,66.6420694405096,68.5982785161221,64.2563232491543,61.3124845737629,73.9042471816044,61.8764281938638,66.1222486980493,71.6593353348389,70.9001881014143,69.3038112890303,71.2265873612827,74.3385958221636,70.659148452811,70.3985418066026,75.7223967747328,87.3472812298173,82.7756891855235,83.1063419404307,79.4324572993571,80.2334242303388,82.7387236243289,87.4049783869485,86.486957172218,83.2518453286702,89.8565059226347,81.6667284769836,94.397423226417,86.2878797651205,92.5268932613109,96.0566340235439,93.1828298260959,86.4429835063485,95.3641476455229,101.625495438942,97.7772959716635,103.443493844875,99.3680537251177,101.819266975282],"name":"Tr1","mode":"markers","type":"scatter","marker":{"color":"rgba(31,119,180,1)","line":{"color":"rgba(31,119,180,1)"}},"error_y":{"color":"rgba(31,119,180,1)"},"error_x":{"color":"rgba(31,119,180,1)"},"line":{"color":"rgba(31,119,180,1)"},"xaxis":"x","yaxis":"y","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>
