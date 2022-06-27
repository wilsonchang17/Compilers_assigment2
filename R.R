data <- read.csv("HW2data.csv")
# score formula:HW1 * 0.1 + HW2 * 0.1 + HW3 * 0.1 + Midterm * 0.3 + Final * 0.4
score <- apply(data["HW1"] * 0.1 + data["HW2"] * 0.1 +
  data["HW3"] * 0.1 +
  data["Midterm"] * 0.3 +
  data["Final"] * 0.4, 1, sum) # 1 for column
# score to grade
grade <- c()
for (i in (1:length(score))) {
  if (score[i] >= 89.5) {
    grade[i] <- "A+"
  } else if (score[i] >= 84.5) {
    grade[i] <- "A"
  } else if (score[i] >= 79.5) {
    grade[i] <- "A-"
  } else if (score[i] >= 76.5) {
    grade[i] <- "B+"
  } else if (score[i] >= 72.5) {
    grade[i] <- "B"
  } else if (score[i] >= 69.5) {
    grade[i] <- "B-"
  } else if (score[i] >= 66.5) {
    grade[i] <- "C+"
  } else if (score[i] >= 62.5) {
    grade[i] <- "C"
  } else if (score[i] >= 59.5) {
    grade[i] <- "C-"
  } else if (score[i] >= 49.5) {
    grade[i] <- "D"
  } else {
    grade[i] <- "E"
  }
}
# put original data, score and grade into a new dataframe
df <- data.frame(data, score, grade)
print(df)