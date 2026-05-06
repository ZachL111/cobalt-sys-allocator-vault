source("R/domain_review.R")

item <- list(signal=69, slack=53, drag=29, confidence=84)
stopifnot(domain_review_score(item) == 188)
stopifnot(domain_review_lane(item) == "ship")
