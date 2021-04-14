library(dataspice)

# Create metadata templates
create_spice()

# Populate attributes

F1 <-  list.files(path = getwd(), pattern = ".csv", full.names = T)

for(i in 1:length(F1)){
  prep_attributes(data_path = F1[i])
}
edit_attributes()
# Populate access

for(i in 1:length(F1)){
  prep_access(data_path = F1[i])
}

edit_access()

# Edit creators

edit_creators()  

# biblio

edit_biblio()


## Write json file

write_spice()

build_site()
