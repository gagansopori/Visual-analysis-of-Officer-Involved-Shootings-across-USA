VizProj<-read.csv('MedianHouseholdIncome2015.csv')

View(VizProj)

# To convert the general field to numeric
VizProj$Median.Income<-as.numeric(as.character(VizProj$Median.Income))

# Calculate the mean of Median Income Column
meanROP<- sum(na.omit(VizProj$Median.Income))/length(na.omit(VizProj$Median.Income))
meanROP

# Replace the null values with mean value
VizProj$Median.Income[is.na(VizProj$Median.Income)]<-meanROP


 #Creating Intervals of Median Values
VizProj$Median.Income[VizProj$Median.Income>=0.0&VizProj$Median.Income<=30000]<-"0-30K"
VizProj$Median.Income[VizProj$Median.Income>30000&VizProj$Median.Income<=60000]<-"30-60K"
VizProj$Median.Income[VizProj$Median.Income>60000&VizProj$Median.Income<=90000]<-"60-90K"
VizProj$Median.Income[VizProj$Median.Income>90000&VizProj$Median.Income<=120000]<-"90-120K"
VizProj$Median.Income[VizProj$Median.Income>150000]<-"150K-Above"


VizProj$Median.Income<-factor(VizProj$Median.Income)


#Writing the file
write.csv(VizProj, file="MedianHouseholdIncome2015UpdatedLatest.csv")


############################################################################################################


VizProj2<-read.csv('PercentOver25CompletedHighSchool.csv')

View(VizProj2)

# To convert the general field to numeric
VizProj2$percent_completed_hs<-as.numeric(as.character(VizProj2$percent_completed_hs))

# Calculate the mean of Median Income Column
meanROP<- sum(na.omit(VizProj2$percent_completed_hs))/length(na.omit(VizProj2$percent_completed_hs))
meanROP

# Replace the null values with mean value
VizProj2$percent_completed_hs[is.na(VizProj2$percent_completed_hs)]<-meanROP


# #Creating Intervals of Average Values
# VizProj$Median.Income[VizProj$Median.Income>=0.0&VizProj$Median.Income<=30000]<-"0-30K"
# VizProj$Median.Income[VizProj$Median.Income>30000&VizProj$Median.Income<=60000]<-"30-60K"
# VizProj$Median.Income[VizProj$Median.Income>60000&VizProj$Median.Income<=90000]<-"60-90K"
# VizProj$Median.Income[VizProj$Median.Income>90000&VizProj$Median.Income<=500000]<-"90K & Above"


VizProj2$percent_completed_hs<-factor(VizProj2$percent_completed_hs)


#Writing the file
write.csv(VizProj2, file="PercentOver25CompletedHighSchoolUpdated.csv")

##############################################################################################################

VizProj3<-read.csv('PercentagePeopleBelowPovertyLevel.csv')

View(VizProj3)

# To convert the general field to numeric
VizProj3$poverty_rate<-as.numeric(as.character(VizProj3$poverty_rate))

# Calculate the mean of Median Income Column
meanROP<- sum(na.omit(VizProj3$poverty_rate))/length(na.omit(VizProj3$poverty_rate))
meanROP

# Replace the null values with mean value
VizProj3$poverty_rate[is.na(VizProj3$poverty_rate)]<-meanROP


# #Creating Intervals of Average Values
# VizProj$Median.Income[VizProj$Median.Income>=0.0&VizProj$Median.Income<=30000]<-"0-30K"
# VizProj$Median.Income[VizProj$Median.Income>30000&VizProj$Median.Income<=60000]<-"30-60K"
# VizProj$Median.Income[VizProj$Median.Income>60000&VizProj$Median.Income<=90000]<-"60-90K"
# VizProj$Median.Income[VizProj$Median.Income>90000&VizProj$Median.Income<=500000]<-"90K & Above"


VizProj3$poverty_rate<-factor(VizProj3$poverty_rate)


#Writing the file
write.csv(VizProj3, file="PercentagePeopleBelowPovertyLevelUpdated.csv")

##############################################################################################################


VizProj4<-read.csv('ShareRaceByCity.csv')


View(VizProj4)


# To convert the general field to numeric
VizProj4$share_white<-as.numeric(as.character(VizProj4$share_white))
VizProj4$share_black<-as.numeric(as.character(VizProj4$share_black))
VizProj4$share_native_american<-as.numeric(as.character(VizProj4$share_native_american))
VizProj4$share_asian<-as.numeric(as.character(VizProj4$share_asian))
VizProj4$share_hispanic<-as.numeric(as.character(VizProj4$share_hispanic))



# Calculate the mean of Median Income Column
meanROP<- sum(na.omit(VizProj4$share_white))/length(na.omit(VizProj4$share_white))
meanROP
# Replace the null values with mean value
VizProj4$share_white[is.na(VizProj4$share_white)]<-meanROP



# Calculate the mean of Median Income Column
meanROP<- sum(na.omit(VizProj4$share_asian))/length(na.omit(VizProj4$share_asian))
meanROP
# Replace the null values with mean value
VizProj4$share_asian[is.na(VizProj4$share_asian)]<-meanROP



# Calculate the mean of Median Income Column
meanROP<- sum(na.omit(VizProj4$share_black))/length(na.omit(VizProj4$share_black))
meanROP
# Replace the null values with mean value
VizProj4$share_black[is.na(VizProj4$share_black)]<-meanROP



# Calculate the mean of Median Income Column
meanROP<- sum(na.omit(VizProj4$share_hispanic))/length(na.omit(VizProj4$share_hispanic))
meanROP
# Replace the null values with mean value
VizProj4$share_hispanic[is.na(VizProj4$share_hispanic)]<-meanROP



# Calculate the mean of Median Income Column
meanROP<- sum(na.omit(VizProj4$share_native_american))/length(na.omit(VizProj4$share_native_american))
meanROP
# Replace the null values with mean value
VizProj4$share_native_american[is.na(VizProj4$share_native_american)]<-meanROP



# #Creating Intervals of Average Values
# VizProj$Median.Income[VizProj$Median.Income>=0.0&VizProj$Median.Income<=30000]<-"0-30K"
# VizProj$Median.Income[VizProj$Median.Income>30000&VizProj$Median.Income<=60000]<-"30-60K"
# VizProj$Median.Income[VizProj$Median.Income>60000&VizProj$Median.Income<=90000]<-"60-90K"
# VizProj$Median.Income[VizProj$Median.Income>90000&VizProj$Median.Income<=500000]<-"90K & Above"


VizProj4$share_white<-factor(VizProj4$share_white)
VizProj4$share_asian<-factor(VizProj4$share_asian)
VizProj4$share_black<-factor(VizProj4$share_black)
VizProj4$share_hispanic<-factor(VizProj4$share_hispanic)
VizProj4$share_native_american<-factor(VizProj4$share_native_american)


#Writing the file
write.csv(VizProj4, file="ShareByCityUpdated.csv")

##############################################################################################################

#Remove read csv's
rm(VizProj)
rm(VizProj2)
rm(VizProj3)
rm(VizProj4)
rm(VizProj5)
rm(meanROP)
rm(s)
rm(df2)
##############################################################################################################

VizProj5<-read.csv('PoliceKillingsUS.csv')
View(VizProj5)

#move data into a vector
df<-VizProj$City
df2<-VizProj5$city


for (i in 1:nrow(VizProj))
{
  for(j in 1:nrow(VizProj5))
  {
    if(VizProj5[j]$state==VizProj[i]$Geographic.Area)
    {
      
      
    }
  }
}


################################################################################################################

VizProjR<-read.csv("PoliceKillingsUSUpdated2018.csv")

View(VizProjR)
df=0

for (i in 2:nrow(VizProjR))
  {
    df= df+1
}
View(df)
lm(VizProj$race~VizProjR$armed+VizProjR$signs_of_mental_illness+VizProjR$flee+VizProjR$age+VizProjR$gender+VizProjR$threat_level+VizProjR$body_camera)
