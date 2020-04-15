library('DBI')
library('RPostgreSQL')
dbname <- "pg_database_development"

drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, dbname=dbname)

summary(con)
dbListTables(con)

#dbListConnections(drv)
#dbGetInfo(drv)

lectures <- dbReadTable(con, "lectures")
categories <- dbReadTable(con, "categories")
categorizations <- dbReadTable(con, "categorizations")
questions <- dbReadTable(con, "questions")
resources <- dbReadTable(con, "resources")
sites <- dbReadTable(con, "sites")
topicalizations <- dbReadTable(con, "topicalizations")
topics <- dbReadTable(con, "topics")

dbDisconnect(con)
dbUnloadDriver(drv)
