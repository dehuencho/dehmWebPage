blogdown::new_site(theme = "wowchemy/starter-academic")
blogdown::config_Rprofile()
blogdown::new_post(title = "First post rmarkdown", 
                   ext = '.Rmarkdown', 
                   subdir = "post")

blogdown::serve_site()
blogdown::stop_server()

blogdown::check_gitignore()
blogdown::check_content()
