library(tidyverse)
regression.figure %>% ggplot(aes(OR, X)) + 
  geom_errorbar(aes(xmin = Lower, xmax = Upper), size = 1, color = 'gray30', width = 0.15) +
  geom_vline(aes(xintercept = 1), size = .25, linetype = 'dashed', color = "grey") +
  geom_point(shape = 18 , size = 3.5, color = 'blue') + 
  theme_bw() +
  theme(panel.grid.minor = element_blank()) +
  scale_x_continuous(breaks = seq(0,8,1) ) +
  coord_trans(x = 'log10') +
  ylab('') +
  xlab('Odds ratio (log scale)') + theme_classic()

regression.figure$X <- as.factor(regression.figure$X)
regression.figure$X <- factor(regression.figure$X, levels = regression.figure$X[order(desc(regression.figure$X))])
regression.figure$X
