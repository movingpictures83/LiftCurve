library(caret)

input <- function(inputfile) {
   lift_results <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
lift_obj <- lift(Class ~ FDA + LDA, data = lift_results)
plot(lift_obj, values = 60, auto.key = list(columns = 2,
                                            lines = TRUE,
                                            points = FALSE))
ggsave(outputfile)
}
