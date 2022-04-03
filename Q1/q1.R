library(ggplot2)

HB <- read.csv("C:\\Users\\qi199\\Documents\\432_Group5\\Project\\Data\\HargreavesEcolLett data prop&LTFHB.csv")
NK <- read.csv("C:\\Users\\qi199\\Documents\\432_Group5\\Project\\Data\\HargreavesEcolLett data prop&LTFNK.csv")


HB_1 <- ggplot(HB, 
       aes(x = Source, 
           fill = nEmzt)) + 
  geom_bar(position = position_dodge(width=0.8))+
  ylab("Seed emergence (# of nEmzt)")
NK_1 <- ggplot(NK, 
       aes(x = Source, 
           fill = nEmzt)) + 
  geom_bar(position = position_dodge(width=0.8))+
  ylab("")+
  theme(axis.text.y=element_blank(),
        axis.ticks.y=element_blank())

plot_grid(HB_1, NK_1, labels = c('HB','NK'), ncol=2)

HB_2 <- ggplot(HB, aes(treat))+
  geom_bar()+
  scale_y_continuous(limits=c(0, 600))+
  geom_text(aes(label=..count..), stat= "count", position=position_dodge(width=0.9), vjust=-0.25)

NK_2 <- ggplot(NK, aes(treat))+
  geom_bar()+
  ylab("")+
  geom_text(aes(label=..count..), stat= "count", position=position_dodge(width=0.9), vjust=-0.25)+
  theme(axis.text.y=element_blank(),
        axis.ticks.y=element_blank())
plot_grid(HB_2, NK_2, labels = c('HB','NK'), ncol=2)