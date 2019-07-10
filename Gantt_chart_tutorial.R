

library(reshape2)
library(ggplot2)

#define tasks
tasks = c("Permit","Export Permit", "Visa and Permit processing in country"  ,"Reconnaissance of sites", "Workshop 1a", "Workshop 1b", "Workshop 1c","Workshop 2","Installation","Training surveys taxa 1", "Training surveys taxa 2","Training surveys taxa 3","Habitat survey training","Surveys taxa 1", "Surveys taxa 2", "Surveys taxa 3","Habitat surveys","Second Team","Retrieval","Analysis 1","Analysis 2","Analysis 3","Analysis 4","Combined analysis","Writing paper 1","Writing paper 2","Workshop 3","Public Outreach","Report writing")

#create a data frame where the tasks are listed, start date and end date and the type of task
Main_data <- data.frame(
  Name        = factor(tasks, levels = tasks),
  Startdate  = as.Date(c("2020-01-01","2020-01-01","2020-04-01", "2020-04-05", "2020-04-10","2020-04-12","2020-04-18","2020-04-24","2020-05-01","2020-06-01","2020-06-01","2020-06-01","2020-06-15","2020-07-01","2020-07-01","2020-07-01","2020-07-01","2020-10-01","2020-10-01","2020-11-01","2020-11-01","2021-01-01","2021-01-01","2021-03-01","2021-02-01","2021-02-01","2021-04-15","2021-05-01","2021-06-01")),
  Enddate    = as.Date(c("2020-04-01","2020-04-01","2020-04-30", "2020-04-09", "2020-04-11","2020-04-16","2020-04-22","2020-04-28","2020-05-31","2020-07-01","2020-07-01","2020-07-01","2020-07-01","2020-10-01","2020-10-01","2020-10-01","2020-10-01","2020-11-01","2020-11-01","2021-01-01","2021-01-01","2021-03-01","2021-03-01","2021-03-31","2021-06-30","2021-06-30","2021-05-01","2021-05-07","2021-06-30")),
  Type = c("Admin","Admin", "Admin", "Field", "Training", "Training", "Training","Training","Field","Field","Field","Field","Field","Field","Field","Field","Field","Field","Field","Analysis","Analysis","Analysis","Analysis","Analysis","Writing","Writing","Training","Outreach","Writing")
)

#melt data into the correct format
Melted_data_frame <- melt(Main_data, measure.vars = c("Startdate", "Enddate"))

#produce Gantt chart
ggplot(Melted_data_frame, aes(value, Name, colour = Type)) + 
  geom_line(size = 6) +
  xlab(NULL) + 
  ylab(NULL)

