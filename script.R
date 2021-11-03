<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>
<div data-datacamp-exercise data-lang="r">
  <code data-type="pre-exercise-code">
    library(googlesheets)
    data <- gs_read(gs_url("https://docs.google.com/spreadsheets/d/1ufuzTL9VCxdvX1QeFQcMGxYbEMq1ZEWVht3CEDpXBmc/edit?usp=sharing"))
              
    data <- as.data.frame(data)
    colnames(data) <- c("DateTime", "Token", "Score")
    data <- data[which(!is.na(data$DateTime)),]
    score <- function(token) {
      i <- which(data$Token == token)
      data[i,]
    }
  </code>
  <code data-type="sample-code">
    # Put Token in "". Ex: score("abcde123")
    score("Enter_your_Token")
  </code>
</div>
