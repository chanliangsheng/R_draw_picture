library("ggplot2")

setwd("D:/研究生学习/mission/cleveland")
#设置工作路径

rawdata <- read.csv(file = "test(1).csv")
#读取csv文件

group <- rawdata$group
#将分组信息提前存储出来

ggplot(rawdata, aes(rawdata$foldchange, rawdata$sample)) +
  geom_point(aes(color = group),size = 3)+
  labs(x="Foldchange",y="metabolin")+
  ggtitle("Human") +
  theme(plot.title = element_text(hjust = 0.5))
#画图，rawdata为原始csv文件，rawdata$foldchange为x轴，rawdata$sample为y轴，geom_point(aes(color = group)：颜色以组来分开，size = 3：点的大小，ggtitle("Human")：标题；labs(x="Foldchange",y="metabolin")：x，y的标题。