rm(list = ls())

getwd()

setwd(getwd())

library(swirl)

swirl()

Vu

1

3

1

library(tidyr)

3

students

?gather

gather(students, sex, count, -grade)

students2

res <- gather(students2, key = sex_class, value = count, -grade)

res

?separate

separate(data = res, col = sex_class, into = c("sex", "class"))

students3

library(readr)

parse_number("class5")

students4

passed

failed

?mutate

passed <- passed %>% mutate(status = "passed")

failed <- failed %>% mutate(status = "failed")

?bind_rows

bind_rows(passed, failed)

sat

1
doanthevu1910@gmail.com
Llu1XlZjUS0fyi5x
1
0

0
