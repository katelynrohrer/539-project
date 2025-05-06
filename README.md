# 539-project


In this project, I attempted the Kaggle project found at this link:
https://www.kaggle.com/competitions/tweet-sentiment-extraction/overview

My data was downloaded directly from their competition site, but for sake of ease I also linked it here:
https://drive.google.com/drive/folders/1amT9XWo2JRiT_O9Q4lvSHpzQGjHj5u94?usp=sharing

#### Goal
In approaching this project, I divided it into two primary steps.
Step 1: Classify the sentiment of the tweets as positive, neutral, or negative
Step 2: Determine which subset of the text most contributed to the overall sentiment of the tweet

Step 2 gives us the actual output that the competition required.


#### How to Run
You can run the program using Docker.
Run the following command then navigate to localhost:7777.

First, within the repo directory, run the following command:
`docker build -t 539-project .`

Once built, run the following:
`docker run -it -p 7777:9999 -v "$PWD:/app/" 539-project`

This will open the project on localhost:7777.

For reference, the build took my system 510 seconds to run.
The project runs the same on the given Docker build for this class,
so if you'd prefer to not wait to build, this command works as well:
`docker run -it -p 7777:9999 -v "$PWD:/app/" uazhlt/pa-ngram-classifier:latest`
