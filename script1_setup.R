blogdown::new_site(theme = "wowchemy/starter-academic")
blogdown::config_Rprofile()
blogdown::new_post(title = "KMeans clusters for zones classifcation with public transport trips2", 
                   ext = '.Rmd', 
                   subdir = "post")

blogdown::new_post(title = "Rstudio with Python:  Santiagos's subway stations & Venues data analysis", 
                   ext = '.Rmd', 
                   subdir = "post")

blogdown::serve_site()
blogdown::stop_server()

gblogdown::check_gitignore()
blogdown::check_content()

rstudioapi::navigateToFile('config.yaml', line = 3)

blogdown::config_netlify()
blogdown::check_netlify()

blogdown::check_hugo()

rstudioapi::navigateToFile("config/_default/params.toml")
rstudioapi::navigateToFile("config/_default/menus.toml")
blogdown::check_config()


rstudioapi::navigateToFile("content/authors/admin/_index.md")
reticulate::py_config()
