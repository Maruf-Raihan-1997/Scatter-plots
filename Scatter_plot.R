#we need a dataset for scatterplot

dataset = mtcars

#we also need to load the library 

library(ggplot2)

#Basic scatter plot (x= independent, y= dependent)

ggplot(dataset , aes (x= wt, y= mpg))+
  geom_point()

#publication quality
#point size and shape


ggplot(dataset , aes (x= wt, y= mpg))+
  geom_point(size= 1, shape = 1)

#best fit/ regression line using leaner model


ggplot(dataset , aes (x= wt, y= mpg))+
  geom_point(size= 2, shape = 1) + 
  geom_text(label=rownames(mtcars))



ggplot(dataset , aes (x= wt, y= mpg))+
  geom_point(size= 2, shape = 1) + 
  geom_smooth()


ggplot(dataset , aes (x= wt, y= mpg))+
  geom_point(size= 2, shape = 1) + 
  geom_smooth(method = lm)


ggplot(dataset , aes (x= wt, y= mpg))+
  geom_point(size= 2, shape = 1) + 
  geom_smooth(method = lm, se = FALSE)

ggplot(dataset , aes (x= wt, y= mpg))+
  geom_point(size= 2, shape = 18, color = "green") + 
  geom_smooth(method = lm, se = FALSE, color = "blue" )


ggplot(dataset , aes (x= wt, y= mpg))+
  geom_point(size= 2, shape = 18, color = "green") + 
  geom_smooth(method = lm, fill = "orange", color = "blue" )

#multiple groups, use of factor for categorical variable

ggplot(dataset, aes(x=wt, y=mpg,, size= factor(cyl), shape= factor(cyl), color= factor(cyl))) +
  geom_point()


ggplot(dataset, aes(x=wt, y=mpg, shape= factor(cyl), color= factor(cyl))) +
  geom_point()+
  geom_smooth(method= lm , se = FALSE ,aes(linetype = factor(cyl))+
  scale_linetype_manual(values = c ("1", "2", "3"))+
    theme_minimal())
  
#chatgpt

ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl), shape = factor(cyl), linetype = factor(cyl))) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  scale_linetype_manual(values = c("dotted", "dashed", "solid")) +
  theme_minimal()



#Removing the CI

library(ggplot2)

data("mtcars")

ggplot(data = mtcars , aes (x= wt, y= mpg))+
  geom_point()+
  geom_smooth(method= lm, se= FALSE)


#Loess line
#it creates neighbourhood scatter line,
#meaning it touches all neihgbouring line


ggplot(data = mtcars , aes (x= wt, y= mpg))+
  geom_point()+
  geom_smooth()

#changing line type and colour

ggplot(data = mtcars , aes (x= wt, y= mpg))+
  geom_point(size=1, shape=18)+
  geom_smooth(method=lm, linetype= "dashed")


ggplot(data = mtcars , aes (x= wt, y= mpg, shape = cyl))+
  geom_point(size=1, shape=18)+
  geom_smooth(method=lm, linetype= "dashed",
              color = "orange")


#multiple line/ factor variable


library(ggplot2)

dataset=mtcars

dataset$cyl

dataset$cyl= as.factor(dataset$cyl)

is.vector("cyl")

ggplot(dataset, aes (x= wt, y= mpg, shape = cyl, color= cyl, 
                     size= cyl))+
  geom_point()

# Scatter plot 3

library(ggplot2)
dataset= mtcars
View(dataset)

#converting cyl to factor

dataset$cyl = as.factor(dataset$cyl)


# regrression lines based on multiple groups

ggplot(dataset, aes (x= wt, y= mpg, color=cyl, shape= cyl))+
  geom_point()+
  geom_smooth(method=lm,se= FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c (4,3,17))+
  scale_color_manual(values=c ('green','red','black'))+
  labs(title = "Miles per gallon \n according to the weight",
       x="weight", y= "miles per gallon")+
  theme(legend.position = "top")



plot= ggplot(dataset, aes (x= wt, y= mpg, color=cyl, shape= cyl))+
  geom_point()+
  geom_smooth(method=lm,se= FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c (4,3,17))+
  scale_color_manual(values=c ('green','red','black'))+
  labs(title = "Miles per gallon according to the \n weight",
       x="weight", y= "miles per gallon")+
  theme(legend.position = "top")


plot+ theme_classic()
plot+ theme_minimal()

