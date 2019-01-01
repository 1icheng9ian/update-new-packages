oldip <- installed.packages()[,1]
save(oldip, file="D:/installedPackages.Rdata")
#remove old version
#install new version
load("D:/installedPackages.Rdata")
newip <- installed.packages()[,1]
for(i in setdiff(oldip, newip)) {
  install.packages(i)
}

