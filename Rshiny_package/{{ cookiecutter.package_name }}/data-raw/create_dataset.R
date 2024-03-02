# Script that shows how to create a dataset

# load default dataset
df <- datasets::faithful

# save as rds
saveRDS(
  df,
  file.path(
    system.file("dashboard", "data", package="{{cookiecutter.package_name}}"),
    "faithful.rds"
  )
)