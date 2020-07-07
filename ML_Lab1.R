
load("C:/Users/91773/Downloads/depression.RData")
depression
depression$Age
depression$Gender = replace(depression$Gender,depression$Gender==1,'Female')
depression$Gender = replace(depression$Gender,depression$Gender==2,'Male')
depression$Gender
help(replace)


load("C:/Users/91773/Downloads/stat1.RData")
friends
friends$Friends
t = table(friends$Friends)
t
prop = prop.table(t)
prop
percentage = prop*100
percentage
pie(t)
pf = round(percentage,1)
pf
lbl = paste(c("No difference","Opposite sex","Same sex"),pf,"%",sep=" ")
lbl
pie(t,label=lbl)


load("C:/Users/91773/Downloads/actor_2013.RData")
actor_age
hist(actor_age$Age)
actor_age$Age
hist(actor_age$Age, xlab="Age of Best Actor Oscar Winners (1970-2013)", main="")
hist(actor_age$Age, xlab="Age of Best Actor Oscar Winners (1970-2013)", ylab="Number of Actors", main="Best Actor Oscar Winners Ages")
hist(actor_age$Age, breaks=20, xlab="Age of Best Actor Oscar Winners (1970-2013)", main="")
x11()
hist(actor_age$Age, xlab="Age of Best Actor Oscar Winners (1970-2013)", ylab="Number of Actors", main="Best Actor Oscar Winners Ages")

summary(actor_age$Age)
mean(actor_age$Age)
sd(actor_age$Age)
var(actor_age$Age)
median(actor_age$Age)
IQR(actor_age$Age)       
min(actor_age$Age)
max(actor_age$Age)
length(actor_age$Age)
quantile(actor_age$Age, 0.25)
quantile(actor_age$Age, 0.75)


load("C:/Users/91773/Downloads/graduation.RData")
grad_data
summary(grad_data)
boxplot(grad_data)
boxplot(grad_data, xlab="Colleges",ylab ="Graduation Rates", main="Comparison of Graduation Rates")
boxplot(grad_data, horizontal=TRUE, ylab="Colleges",xlab ="Graduation Rates", main="Comparison of Graduation Rates")


load("C:/Users/91773/Downloads/sdintuition.RData")
ratings
sapply(ratings, sd)
