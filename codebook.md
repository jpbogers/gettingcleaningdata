### Codebook ###

The data is delivered in 

* Three files as training data
* Three files as  test data
* One file for the activity labels (type of activity)
* One file with the features (type of measurement)

Since the training data and the test data all come from the same experiments and are just randomly separated, they can be merged.

The r-program assumes that the ZIP file is downloaded and unzipped. If not, the code is provided and needs to be uncommented. The working directory needs to be corrected.

As a first step, all the training and test datasets are read in. 
After this, the experimental data-set, the labels and the subject data of the training and the test datasets are merged into three separate files (experimental data, labels, subjects).

Since we are only interested in the mean and the standard deviation information, the indices of these variables are extracted from the features dataset using grep, searching for "mean" and "std". This index is used to extract the correct columns from the experimental dataset.

The activity data (type of activity, called "label") and the subject information is merged to the dataset and the column-labels are attached.

The average of every column is calculated, grouped by "subject" and "activity". This can be done in several ways (cast/melt, ddply (plyr), tapply) but I personally "liked" (and understood) the use of "dplyr" group_by best.

To make the final outcome tidy, the variable names of the averaged variables is corrected and the final tidy dataset is exported as a txt file. Afterwards, all the datasets are cleaned from the workspace.