# Compute four values, in the following order, from
# the grouped data:
#
# 1. count = n()
# 2. unique = n_distinct(ip_id)
# 3. countries = n_distinct(country)
# 4. avg_bytes = mean(size)
#
# A few thing to be careful of:
#
# 1. Separate arguments by commas
# 2. Make sure you have a closing parenthesis
# 3. Check your spelling!
# 4. Store the result in pack_sum (for 'package summary')
#
# You should also take a look at ?n and ?n_distinct, so
# that you really understand what is going on.

pack_sum <- summarize(by_package,
                      count = n(),
                      unique = n_distinct(ip_id),
                      countries = n_distinct(country),
                      avg_bytes = mean(size))

submit()

pack_sum

quantile(pack_sum$count, probs = 0.99)

top_counts <- filter(pack_sum, count > 679)

top_counts

View(top_counts)

top_counts_sorted <- arrange(top_counts, desc(count))

View(top_counts_sorted)

quantile(pack_sum$unique, probs = 0.99)

top_unique <- filter(pack_sum, unique > 465)

View(top_unique)

top_unique_sorted <- arrange(top_unique, desc(unique))

View(top_unique_sorted)

