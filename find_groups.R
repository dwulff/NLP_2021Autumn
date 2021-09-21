

groups = readr::read_delim("assets/groups",delim='\t',col_names = c('surname','name','mail','group'))
groups$full = paste(groups$name, groups$surname)

sapply(rev(groups$full[groups$group==1]), charToRaw)
sapply(rev(groups$full[groups$group==2]), charToRaw)
sapply(rev(groups$full[groups$group==3]), charToRaw)
sapply(rev(groups$full[groups$group==4]), charToRaw)
