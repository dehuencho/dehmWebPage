blogdown::new_site(theme = "wowchemy/starter-academic")

blogdown::new_post(title = "First post rmarkdown", 
                   ext = '.Rmarkdown', 
                   subdir = "post")

blogdown::serve_site()