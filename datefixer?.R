lec <- read.csv("lecfix.csv", header=TRUE, stringsAsFactors = FALSE)
lec$date
class(lec$date)
lec$date <- as.Date(lec$date, "%m/%d/%Y")

write.csv(lec, "lecfix2.csv", row.names=FALSE)
