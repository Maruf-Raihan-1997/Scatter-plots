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

#best fit/ regression line


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
