# 🛠️ MLOps Major Assignment: Linear Regression Pipeline

##  Objective
Build a complete MLOps pipeline for **Linear Regression** using the **California Housing** dataset. The pipeline integrates training, testing, quantization, Dockerization, and CI/CD — all managed in the `main` branch.

---

##  Project Structure

```mlops_major_assignment/
├── .github/
│ └── workflows/
│ └── ci.yml # GitHub Actions CI/CD pipeline
├── src/
│ ├── train.py # Trains Linear Regression model and saves it
│ ├── quantize.py # Manually quantizes model parameters
│ └── predict.py # Loads model and performs predictions
├── tests/
│ └── test_train.py # Unit tests for training pipeline
├── Dockerfile # Docker setup for the app
├── requirements.txt # Required Python packages
├── .gitignore # Files to ignore in Git
└── README.md # Project documentation```

---

##  Dataset & Model

- **Dataset:** `California Housing` from `sklearn.datasets`
- **Model:** `LinearRegression` from `scikit-learn`

---

##  Setup Instructions

```bash
# Create virtual environment
python -m venv venv
.\venv\Scripts\activate      # Windows PowerShell

# Install dependencies
pip install -r requirements.txt

# Pipeline Breakdown
Step	File(s) Involved	Description
Train Model	src/train.py	Train a Linear Regression model and save with joblib
Testing	tests/test_train.py	Unit tests: dataset load, model validation, R² threshold check
Quantization	src/quantize.py	Manual 8-bit quantization of model parameters
Prediction	src/predict.py	Load model and print sample predictions
Dockerization	Dockerfile	Build and test container with predict pipeline
CI/CD	.github/workflows/ci.yml	Automates test → train → quantize → docker build & run

## Docker Usage
bash
Copy
Edit
# Build Docker image
docker build -t linear-regression-pipeline .

# Run container
docker run --rm linear-regression-pipeline
 CI/CD Pipeline
Job	Description	Dependency
test suite	Runs pytest on the test module	—
train and quantize	Executes training & quantization	test suite
build and test container	Builds Docker image and verifies prediction	train and quantize


Triggered on every push to main.

```
---
```
R2 Score: 0.6201853253087715
MSE: 0.49779099525116177

## Sample Prediction:
Sample predictions: [4.13945094 3.9882056  3.68329939 3.2411463  2.4119279 ]

```
---
