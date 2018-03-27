# MATE-T580 Demo script
# This script is for tuning select hyperparameters of a decision tree

# Load needed libraries
library(caret)
library(rpart)

# Load iris dataset
data("iris")

# Add an Id column and a random noise column to make it more interesting
iris$Id <- 1:nrow(iris)
set.seed(1234) # Set random seed 
iris$noise <- rnorm(nrow(iris))

k = 5 # Define number of folds to be used for cross-validation
folds <- createFolds(iris$Species, k, list= FALSE) # create the folds

# Define the grid of hyperparameters values
mygrid <- expand.grid(minsplit=c(1, 2, 5, 10, 20), maxdepth=c(2,3,4,5,6), cp=c(0, 0.01, 0.05, 0.1, 0.2, 0.3, 0.5, 1)) 

# Accuracy values for each iteration will be saved in this vector
mod_accuracy <- rep(0, nrow(mygrid))

# Loop over the grid rows
for (i in 1:nrow(mygrid)) {
    acc <- rep(0, k) # Accuracy values for each fold will be saved here
    for (j in 1:k) { # Loop over teh folds
        iris_train <- iris[folds!=j,] # Train set
        iris_test <- iris[folds==j,] # Test set
        
        # Train the rpart model
        mod <- rpart(Species~., iris_train, control=list(minsplit = mygrid$minsplit[i], maxdepth = mygrid$maxdepth[i], cp = mygrid$cp[i] )  )
        
        # Generate predictions and calculate the accuracy
        pred <- predict(mod, iris_test, type="class")
        cm <- confusionMatrix(pred, iris_test$Species)
        acc[j] <- cm$overall["Accuracy"]
    }
    mod_accuracy[i] <- mean(acc) # Save mean accuracy
    print(paste0("Iteration ", i, " out of ", nrow(mygrid), " completed."))
    flush.console()
}

# Best model
bst.mod <- which.max(mod_accuracy)
mygrid[bst.mod,]
mod_accuracy[bst.mod]
