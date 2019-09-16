install.packages("tidyverse")
library(tidyverse)
mpg
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
ggplot(data = mpg)
?mpg
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = cyl, y = hwy))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = class, y = drv))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")
ggplot(mpg, aes(x = displ, y = hwy, colour = cty)) +
  geom_point()
ggplot(mpg, aes(x = displ, y = hwy, size = cty)) +
  geom_point()
ggplot(mpg, aes(x = displ, y = hwy, shape = cty)) +
  geom_point()
ggplot(mpg, aes(x = displ, y = hwy, colour = hwy, size = displ)) +
  geom_point()
ggplot(mtcars, aes(wt, mpg)) +
  geom_point(shape = 21, colour = "black", fill = "white", size = 5, stroke = 5)
ggplot(mpg, aes(x = displ, y = hwy, colour = displ < 5)) +
  geom_point()
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(. ~ cyl)
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_grid(. ~ cty)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = drv, y = cyl))
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth()
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE)
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))

##### Additional tutorial #####
##ggtheme
library(tidyverse)
library(ggthemes)
data(iris)
head(iris)
ggplot() +
  geom_point(data = iris, mapping = aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  theme_test()
install.packages("ggthemes")
library(ggthemes)
ggplot() +
  geom_point(data = iris, mapping = aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  theme_few()
##label
ggplot() +
  geom_point(data = iris, mapping = aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  theme_few() +
  labs(x = "Sepal length (cm)", y = "Petal length (cm)")
ggplot() +
  geom_point(data = iris, mapping = aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  theme_few() +
  xlab("Sepal length (cm)") + 
  ylab("Petal length (cm)")
ggplot() +
  geom_point(data = iris, mapping = aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  theme_few() +
  labs(x = "Sepal length (cm)", y = "Petal length (cm)", color = "Iris species")
ggplot() +
  geom_point(data = iris, mapping = aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  theme_few() +
  labs(x = "Sepal length (cm)", y = "Petal length (cm)", color = "Iris species", title = "Petal length vs. sepal length by species")
ggplot() +
  geom_point(data = iris, mapping = aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  theme_few() +
  labs(x = "Sepal length (cm)", y = "Petal length (cm)", color = "Iris species") +
  ggtitle("Petal length vs. sepal length by species")
ggplot() +
  geom_point(data = iris, mapping = aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  theme_few() +
  labs(x = "Sepal length (cm)", y = "Petal length (cm)", color = "Iris species",
       title = "Petal length vs. sepal length by species", subtitle = "Iris setosa displays a weak petal-sepal length relationship", 
       caption = "Data source: R.A. Fisher")
ggplot() +
  geom_point(data = iris, mapping = aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  theme_few() +
  labs(x = "Sepal length (cm)", y = "")
ggplot() +
  geom_point(data = iris, mapping = aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  theme_few() +
  xlab(NULL) +
  ylab("")
ggsave("petal_length_vs_sepal_length.pdf", width = 5, height = 4, units = "in")
ggsave("petal_length_vs_sepal_length.pdf", width = 10, height = 8, units = "in")

##### Additional Exercise #####
size_mr_data <- data.frame(
  body_mass = c(32000, 37800, 347000, 4200, 196500, 100000,
                4290, 32000, 65000, 69125, 9600, 133300, 150000, 407000,
                115000, 67000,325000, 21500, 58588, 65320, 85000, 135000,
                20500, 1613, 1618),
  metabolic_rate = c(49.984, 51.981, 306.770, 10.075, 230.073, 
                     148.949, 11.966, 46.414, 123.287, 106.663, 20.619, 180.150, 
                     200.830, 224.779, 148.940, 112.430, 286.847, 46.347,
                     142.863, 106.670, 119.660, 104.150, 33.165, 4.900, 4.865),
  family = c("Antilocapridae", "Antilocapridae", "Bovidae",
             "Bovidae", "Bovidae", "Bovidae", "Bovidae", "Bovidae",
             "Bovidae", "Bovidae", "Bovidae", "Bovidae", "Bovidae",
             "Camelidae", "Camelidae", "Canidae", "Cervidae",
             "Cervidae", "Cervidae", "Cervidae", "Cervidae", "Suidae",
             "Tayassuidae", "Tragulidae", "Tragulidae"))
ggplot(data = size_mr_data) +
  geom_point(mapping = aes(x = body_mass, y = metabolic_rate, color = family, size = 3)) +
  scale_x_continuous(trans = "log2") +
  facet_wrap(~family, nrow = 2)

bird_data <- read.csv("http://www.esapubs.org/archive/ecol/E088/096/avian_ssd_jan07.txt", sep = "\t", 
                      na.strings = c("-999", "-999.0"))
ggplot(data = bird_data, aes(x = F_mass)) +
  geom_histogram(fill = "blue") +
  scale_x_continuous(trans = "log10") +
  labs(x = "Female mass (g)")

ggplot(data = bird_data) +
  geom_histogram(aes(x = F_mass), fill = "red", alpha = 0.5) +
  geom_histogram(aes(x = M_mass), fill = "blue", alpha = 0.5) +
  scale_x_continuous(trans = "log10") +
  labs(x = "mass (g)") +
  facet_wrap(~Family, nrow = 3)

ggplot(data = bird_data) +
  geom_histogram(aes(x = F_wing), fill = "red", alpha = 0.5) +
  geom_histogram(aes(x = M_wing), fill = "blue", alpha = 0.5) +
  scale_x_continuous(trans = "log10") +
  labs(x = "wing") +
  facet_wrap(~Family, nrow = 11)
