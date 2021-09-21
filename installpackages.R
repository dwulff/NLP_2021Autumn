# https://dwulff.github.io/NLP_2020Autumn/

# Skript um alle nötigen Pakete zu installieren

NLP_package_installation <- function() {

  installed_packages <- rownames(installed.packages())

  # Critical packages
  critical <- c(

    # Utilities --------------
    "devtools",

    # Tidyverse --------------

    "tidyverse",
    
    # NLP --------------
    "tidytext",
    "wordcloud", 
    "stopwords",
    
    # Markdown ---------
    "rmarkdown"
  )

  # Optional packages
  optional <- c(
  
    # NLP ----------
    "SnowballC",
    "tm",
    
    # # Utilities --------------
    #
    "Rcpp",
    "rvest",
    "xml2",
    "XML",
    # "lubridate",
    # "skimr",

    # Markdown / Shiny --------------

    # "shiny",
    # "shinyjs",
    # "knitr",
    # "markdown",
    # "rmarkdown",
    # "rmdformats",
    # "DT",

    # Stats --------------

    # "lme4",
    # "afex",
    # "car",
    # "BayesFactor",
    # "parfm",
    # "lava",
    # "rsq",
    # "broom",

    # ML --------------

    # "caret",
    # "FFTrees",
    # "rpart",
    # "randomForest",
    # "e1071",
    # "party",
    # "partykit",
    # "glmnet",
    # "earth",
    # "tensorflow",
    # "Boruta",

    # Plotting --------------
    # "yarrr",
    # "diagram",
    # "ggRandomForests",
      "ggthemes"
    # "ggpubr",

    # Datasets --------------
    # "speff2trial",
    # "ISLR",
    # "mlbench"
    )

  message("Welcome to the course Natural Language Processing as a Tool for Psychological Research!")
  message("We are now installing a few packages, this might take a few minutes...")

  critical_not_installed <- c()
  optional_not_installed <- c()

  for(package.i in sort(critical)) {

    if((package.i %in% installed_packages) == FALSE) {

      if(package.i == "Rcpp"){
        test <- try(install.packages(package.i))
        if(is.null(test)){
        } else {
          message(paste("Error: could not install package Rcpp"))
        }
      } else {
        install.packages(package.i)
      }

    }

    # If package wasn't installed, then send us an email
    if((package.i %in% rownames(installed.packages())) == FALSE) {

      critical_not_installed <- c(critical_not_installed, package.i)

    }

  }


  for(package.i in sort(optional)) {

    if((package.i %in% installed_packages) == FALSE) {

      if(package.i == "Rcpp"){
        test <- try(install.packages(package.i))
        if(is.null(test)){
          # message(paste("Install", package.i, "..."))
        } else {
          message(paste("Error: could not install package Rcpp"))
        }
      } else {
        install.packages(package.i)
      }

    }


    # If package wasn't installed, then send us an email
    if((package.i %in% rownames(installed.packages())) == FALSE) {

      optional_not_installed <- c(optional_not_installed, package.i)

    }

  }

  if(length(critical_not_installed) > 0 | length(optional_not_installed) > 0) {

    message("*** Report ***")

    warning(paste("The critical packages [",
                  paste(critical_not_installed, sep = ", "),
                  "] und the optional packages [",
                  paste(optional_not_installed, sep = ", "),
                  "] could not be installed. Please copy this text together with the whole installation print report in the console and send it to us via mail so that we can assist you."))
  } else {
    message("*** Bericht ***")

    message("All packages installed successfully.")

  }






  message("--------------------------------")
  message("See you next week")
  message("dwulff.github.io/NLP_2020Autumn/")
  message("--------------------------------")

}


# Run code!
NLP_package_installation()
