library(devtools)

##### Install specific package versions from CRAN #####

# install_version("ggplot2", "2.1.0")
# install_version("ggthemes", "3.3.0")

##### Install packages in development from GitHub #####

# install_github("nicholasehamilton/ggtern")
data_dir <- "/usr/local/share/datasets"
dir.create(data_dir)

download.file(
  "http://s3.amazonaws.com/assets.datacamp.com/production/course_3324/datasets/iris.rds",
  file.path(data_dir, "iris.rds")
)
