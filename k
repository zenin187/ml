📘 Experiment Title

Implementation of Logistic Regression

🎯 Aim

To implement Logistic Regression on a given dataset and predict the class and probability of passing for a given input.

📖 Theory

Logistic Regression is a supervised learning algorithm used for binary classification problems such as Pass/Fail.

It uses the sigmoid function to convert output into probability between 0 and 1:

𝑃(𝑦=1)=1/(1+𝑒^-(𝑏0+𝑏1𝑥))

If probability ≥ 0.5 → Pass (1)
If probability < 0.5 → Fail (0)
🔢 Algorithm Steps
Prepare dataset (hours studied and result)
Train Logistic Regression model
Predict class label for new input
Predict probability for new input
Display results
💻 Program
from sklearn.linear_model import LogisticRegression
import numpy as np

# Dataset
X = np.array([1,2,3,4,5]).reshape(-1,1)
y = np.array([0,0,1,1,1])

# Model
model = LogisticRegression()
model.fit(X, y)

# Prediction for 2.5 hours
print("Prediction:", model.predict([[2.5]]))
print("Probability:", model.predict_proba([[2.5]]))

📊 Output
Prediction → 0 or 1 (Fail/Pass)
Probability → Likelihood of passing (value between 0 and 1)

Example:

Prediction: [1]
Probability: [[0.3 0.7]]
