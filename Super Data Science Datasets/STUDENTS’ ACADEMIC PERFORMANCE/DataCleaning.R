Students <- read.csv('/Users/Leo/Documents/Case\ Studies/Students\ Academic\ Perfomance\ Dataset/Students_Data.csv', as.is = T)
setwd('/Users/Leo/Documents/Case\ Studies/Students\ Academic\ Perfomance\ Dataset')

write.csv(Students, "StudentsDataCleaned.csv", row.names = F)
head(Students)

unique(Students$NationalITy)
unique(Students$StageID)
unique(Students$Class)

Kuwait

Students$NationalITy <- gsub("KW", "Kuwait", Students$NationalITy)

Students$NationalITy <- gsub("lebanon", "Lebanon", Students$NationalITy)

Students$NationalITy <- gsub("SaudiArabia", "Saudi Arabia", Students$NationalITy)

Students$NationalITy <- gsub("venzuela", "Venezuela", Students$NationalITy)

Students$Class <- gsub("L", "Low-Level", Students$Class)
Students$Class <- gsub("M", "Medium-Level", Students$Class)
Students$Class <- gsub("H", "High-Level", Students$Class)

Students$StageID <- gsub("lowerlevel", "Lower Level", Students$StageID)
Students$StageID <- gsub("MiddleSchool", "Middle School", Students$StageID)
Students$StageID <- gsub("HighSchool", "High School", Students$StageID)


colnames(Students) <- c("Gender", "Nationality", "PlaceOfBirth", "StageID", "GradeID", "SectionID",
                        "Topic", "Semester", "Relation", "RaisedHands", "VisitedResources", "AnnouncementsViewed", "Discussion", "ParentAnsweredSurvey", "ParentSchoolSatisfaction", "StudentAbsenceDays", "Class")


head(Students)
