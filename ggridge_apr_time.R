library("ggridges")
library("ggplot2")
apr_time<-read.csv(file.choose(),header = T)
p<-ggplot(apr_time,aes(x=apr_time, y=factor(label),fill=stat(x))) +
  geom_density_ridges_gradient(scale = 5, rel_min_height = 0) +
  scale_x_continuous(expand = c(0.02, 0)) +
  scale_y_discrete(expand = expand_scale(mult = c(0.01, 0))) +
  scale_fill_viridis_c(name = "Time", option = "inferno") +
  labs(x='Appearance time (min)',y='Day of isolation & Antibiotics')+
  theme_ridges(center_axis_labels = TRUE)+
  theme(text = element_text(size = 20),
        axis.text = element_text(size = 18),
        legend.key.size=unit(1.5,'cm'),
        legend.key.width=unit(0.3,'cm'))
p



