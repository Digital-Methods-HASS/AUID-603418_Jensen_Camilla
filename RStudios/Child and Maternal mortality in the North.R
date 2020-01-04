Interviews <- read.csv("Data/maternal-mortality.csv")

library(tidyverse)
getwd()

# Uploading my data for Maternal Mortality
Interviews <- read_csv("Data/maternal-mortality.csv", na= "NULL")
View(Interviews)
Interviews$MaternalMortality <- Interviews$`Maternal Mortality Ratio (Gapminder (2010) and World Bank (2015)) (deaths per 100,000 live births)`

# Uploading my data for child Mortality 
Interviews1 <- read_csv("Data/child-mortality.csv", na= "NULL")
Interviews1$ChildMortality <- Interviews1$`Under five mortality rate (% of children that die before they are 5 years old)`
View(Interviews1)

# Inspect my dataset on Maternal Mortality 
head(Interviews)
select(Interviews, Entity, Year)
filter(Interviews, Entity == "Denmark")

head(Interviews)
select(Interviews, Entity, Year)
filter(Interviews, Entity == "Norway")

head(Interviews)
select(Interviews, Entity, Year)
filter(Interviews, Entity == "Sweden")

# Pipes on Denmark, Norway and Sweden for Maternal Mortality 
Interviews_Denmark <- Interviews %>%
  filter(Entity=="Denmark") %>%
  select(Entity, Year, MaternalMortality)

Interviews_Norway <- Interviews %>% 
  filter(Entity=="Norway") %>% 
  select(Entity, Year, MaternalMortality)

Interviews_Sweden <- Interviews %>% 
  filter(Entity=="Sweden") %>% 
  select(Entity, Year, MaternalMortality)

#ggplots for Maternal Mortality 
ggplot(data = Interviews_Denmark, aes(x = Year, y = MaternalMortality)) +
  geom_point(color = "yellow")
ggplot(data = Interviews_Denmark, aes(x = Year, y = MaternalMortality)) +
  geom_point(alpha = 0.5)
ggplot(data = Interviews_Denmark, aes(x = Year, y = MaternalMortality)) +
  geom_jitter(alpha = 0.5, color = "yellow")

ggplot(data = Interviews_Norway, aes(x = Year, y= MaternalMortality)) +
  geom_point(color ="red")
ggplot(data = Interviews_Norway, aes(x = Year, y = MaternalMortality)) +
  geom_point(alpha = 0.5)
ggplot(data = Interviews_Norway, aes(x = Year, y = MaternalMortality)) +
  geom_jitter(alpha = 0.5, color = "red")

ggplot(data = Interviews_Sweden, aes(x = Year, y= MaternalMortality)) + 
  geom_point(color = "pink")
ggplot(data = Interviews_Sweden, aes(x = Year, y = MaternalMortality)) +
  geom_point(alpha = 0.5)
ggplot(data = Interviews_Sweden, aes(x = Year, y = MaternalMortality)) +
  geom_jitter(alpha = 0.5, color = "pink")



# Inspect my dataset on child mortality 
head(Interviews1)
select(Interviews1, Entity, Year)
filter(Interviews1, Entity == "Denmark")

head(Interviews1)
select(Interviews1, Entity, Year)  
filter(Interviews1, Entity =="Norway")  

head(Interviews1)  
select(Interviews1, Entity, Year)  
filter(Interviews1, Entity == "Sweden")  

# Pipes on Denmark, Norway and Sweden for Child Mortality 
Interviews1_Denmark <- Interviews1 %>%
  filter(Entity=="Denmark") %>%
  select(Entity, Year, ChildMortality)

Interviews1_Norway <- Interviews1 %>% 
  filter(Entity=="Norway") %>% 
  select(Entity, Year, ChildMortality)

Interviews1_Sweden <- Interviews1 %>% 
  filter(Entity=="Sweden") %>% 
  select(Entity, Year, ChildMortality)

#ggplots for Child Mortality 
ggplot(data = Interviews1_Denmark, aes(x = Year, y = ChildMortality)) +
  geom_point(color = "orange")
ggplot(data = Interviews1_Denmark, aes(x = Year, y = ChildMortality)) +
  geom_point(alpha = 0.5)
ggplot(data = Interviews1_Denmark, aes(x = Year, y = ChildMortality)) +
  geom_jitter(alpha = 0.5, color = "orange")

ggplot(data = Interviews1_Norway, aes(x = Year, y = ChildMortality)) + 
  geom_point(color = "green")
ggplot(data = Interviews1_Norway, aes(x = Year, y = ChildMortality)) +
  geom_point(alpha = 0.5)
ggplot(data = Interviews1_Norway, aes(x = Year, y = ChildMortality)) +
  geom_jitter(alpha = 0.5, color = "green")

ggplot(data = Interviews1_Sweden, aes(x = Year, y = ChildMortality)) + 
  geom_point(color = "black")
ggplot(data = Interviews1_Sweden, aes(x = Year, y = ChildMortality)) +
  geom_point(alpha = 0.5)
ggplot(data = Interviews1_Sweden, aes(x = Year, y = ChildMortality)) +
  geom_jitter(alpha = 0.5, color = "black")

