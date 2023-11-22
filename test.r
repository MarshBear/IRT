list.of.packages <- c("mirt")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages, repos = "http://cran.us.r-project.org")
lapply(list.of.packages, library, character.only = TRUE)

score <- read.csv('正式测试/score.csv')
score.pre <- score[,2:5]
score.mid1 <- score[,6:9]
score.mid2 <- score[,10:13]
score.post <- score[,14:17]
names(score.pre) <- c("T1", "T2", "T3", "T4")
names(score.mid1) <- c("T1", "T2", "T3", "T4")
names(score.mid2) <- c("T1", "T2", "T3", "T4")
names(score.post) <- c("T1", "T2", "T3", "T4")

linking <- read.csv('正式测试/linking.csv')
linking.q1 <- linking[,2:5]
linking.q2 <- linking[,6:9]
linking.q3 <- linking[,10:13]
names(linking.q1) <- c("T1", "T2", "T3", "T4")
names(linking.q2) <- c("T1", "T2", "T3", "T4")
names(linking.q3) <- c("T1", "T2", "T3", "T4")

grm.theta <- cbind(theta.pre.linked, theta.mid1.linked, theta.mid2.linked, theta.post.linked)
write.csv(grm.theta, "正式测试/result.csv")
