 Experiment 1: Statistical Measures 
import numpy as np 
from statistics import mean, median, mode 
data = [12, 15, 20, 20, 25, 30, 35, 40, 40, 40] 
print("Mean:", mean(data)) 
print("Median:", median(data)) 
print("Mode:", mode(data)) 
print("Variance:", np.var(data)) 
print("Standard Deviation:", np.std(data)) 



� Experiment 2: Python Libraries 
import math 
import numpy as np 
from scipy import stats 
data = [5, 10, 15, 20, 25] 
print("Square root:", math.sqrt(25)) 
print("Factorial:", math.factorial(5)) 
print("Log:", math.log(10)) 
arr = np.array(data) 
print("Array Mean:", np.mean(arr)) 
print("Normal Distribution PDF:", stats.norm.pdf(0)) 



� Experiment 3: Pandas & Matplotlib 
import pandas as pd 
import matplotlib.pyplot as plt 
data = {'Student': ['A','B','C','D','E'], 
'Marks': [75,82,90,65,88]} 
df = pd.DataFrame(data) 
print(df.describe()) 
plt.bar(df['Student'], df['Marks']) 
plt.title("Student Marks") 
plt.show() 



� Experiment 4: Simple Linear Regression 
import numpy as np 
from sklearn.linear_model import LinearRegression 
import matplotlib.pyplot as plt 
X = np.array([1,2,3,4,5]).reshape(-1,1) 
y = np.array([35,40,50,60,65]) 
model = LinearRegression() 
model.fit(X,y) 
pred = model.predict([[6]]) 
print("Predicted Marks:", pred) 
plt.scatter(X,y) 
plt.plot(X, model.predict(X)) 
plt.show() 



� Experiment 5: Multiple Linear Regression 
import numpy as np 
from sklearn.linear_model import LinearRegression 
X = np.array([[1000,2],[1500,3],[1800,3],[2000,4]]) 
y = np.array([50,65,75,85]) 
model = LinearRegression() 
model.fit(X,y) 
pred = model.predict([[2200,4]]) 
print("Predicted Price:", pred) 



� Experiment 6: Decision Tree 
from sklearn.tree import DecisionTreeClassifier, plot_tree 
import matplotlib.pyplot as plt 
X = [[1,0],[1,1],[2,1],[3,1]] 
y = [0,0,1,1] 
model = DecisionTreeClassifier(max_depth=3) 
model.fit(X,y) 
plot_tree(model) 
plt.show() 



� Experiment 7: KNN 
from sklearn.neighbors import KNeighborsClassifier 
X = [[2,4],[4,6],[6,8],[8,10]] 
y = ['A','A','B','B'] 
model = KNeighborsClassifier(n_neighbors=3) 
model.fit(X,y) 
print("Prediction:", model.predict([[5,7]])) 



� Experiment 8: Logistic Regression 
from sklearn.linear_model import LogisticRegression 
import numpy as np 
X = np.array([1,2,3,4,5]).reshape(-1,1) 
y = np.array([0,0,1,1,1]) 
model = LogisticRegression() 
model.fit(X,y) 
print("Prediction:", model.predict([[2.5]])) 
print("Probability:", model.predict_proba([[2.5]])) 



� Experiment 9: K-Means 
from sklearn.cluster import KMeans 
import matplotlib.pyplot as plt 
X = [[1,2],[2,3],[3,4],[8,9],[9,10]] 
model = KMeans(n_clusters=2) 
model.fit(X) 
print("Centers:", model.cluster_centers_) 
plt.scatter(*zip(*X))'
plt.show() 

X_train,X_test,y_train,y_test = 
train_test_split(data.data,data.target,test_size=0.3) 
model = KNeighborsClassifier() 
model.fit(X_train,y_train) 
pred = model.predict(X_test) 
print("Accuracy:", accuracy_score(y_test,pred))
