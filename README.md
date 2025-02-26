# ML Apprentice Project: Sentence Transformers & Multi-Task Learning

[![Docker](https://img.shields.io/badge/Docker-Supported-blue.svg)](https://www.docker.com/)
[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org/)
[![Hugging Face Transformers](https://img.shields.io/badge/Transformers-HuggingFace-blue.svg)](https://huggingface.co/transformers/)

## 📌 Overview

This repository contains my solution to the ML Apprentice Take Home Technical Test. The project assesses my ability to implement, train, and optimize neural network architectures with a focus on sentence transformers and multi-task learning. The project is divided into four main tasks:

1. **Task 1: Sentence Transformer Implementation**  
   - Implement a sentence transformer using a pre-trained BERT-base model to encode input sentences into fixed-length embeddings.

2. **Task 2: Multi-Task Learning Expansion**  
   - Extend the sentence transformer for multi-task learning by adding two task-specific heads:
     - **Task A:** Sentence Classification (with six made-up categories)
     - **Task B:** Sentiment Analysis (with three sentiment labels)

3. **Task 3: Training Considerations**  
   - Discuss the implications of freezing different parts of the network and present a transfer learning strategy that balances preserving pre-trained knowledge with task-specific adaptation.

4. **Task 4: Training Loop Implementation (BONUS)**  
   - Code a training loop that handles a hypothetical dataset, demonstrates forward passes through the multi-task model, computes task-specific losses, and tracks performance metrics.

🔗 **GitHub Repository:** [ML-Apprentice-Project](https://github.com/lthornqu/ML-Apprentice-Project-sentence-transformers-multi-task-learning/)

## 🏠 Project Structure

```
├── Dockerfile
├── requirements.txt
├── main_ML_Apprentice_Project.ipynb  # Jupyter Notebook with model implementation
└── README.md  # This file
```

## 🛠 Installation & Setup

### Prerequisites
- Python 3.8 (the project has been tested with Python 3.8)
- [Docker Desktop](https://www.docker.com/products/docker-desktop) (optional, for containerized execution)
- JupyterLab (if running the notebook locally)

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/lthornqu/ML-Apprentice-Project-sentence-transformers-multi-task-learning.git
cd ML-Apprentice-Project-sentence-transformers-multi-task-learning
```

### 2️⃣ Create and Activate a Virtual Environment
```bash
python -m venv venv
source venv/bin/activate  # On Windows, use: venv\Scripts\activate
```

### 3️⃣ Install Dependencies

Ensure you have Python **3.8+** installed. You can install dependencies using:

```bash
pip install -r requirements.txt
```

### 4️⃣ Run the Jupyter Notebook

To execute the project in an interactive environment:

```bash
jupyter notebook
```

Then open `main_ML_Apprentice_Project.ipynb`.

## 🛆 Running with Docker

You can build and run this project using Docker (after first navigating to the project's location on your device in Terminal):

### 1️⃣ Build the Docker Image

```bash
docker build -t ml-apprentice-project .
```

### 2️⃣ Run the Container

```bash
docker run --rm -it ml-apprentice-project
```

## 🏅 Model Training & Evaluation

- The model is pretrained using Hugging Face's transformer models (BERT).
- Training is simulated with synthetic/hypothetical data.
- Multiple training strategies are tested, including transfer learning.

## 📄 Task Breakdown

### ✅ Task 1: Sentence Transformer Implementation
Objective:
Create a model that leverages a pre-trained BERT-base backbone to generate fixed-length sentence embeddings using mean pooling.

Highlights:
- Utilizes Hugging Face's transformers library.
- Implements mean pooling to aggregate token-level representations into a single vector.

### ✅ Task 2: Multi-Task Learning Expansion
Objective:
Extend the sentence transformer model to perform two tasks simultaneously:
- Task A (Sentence Classification): Uses a linear layer to output predictions across six made-up categories.
- Task B (Sentiment Analysis): Uses a separate linear layer to classify sentiment into three classes.

Highlights:
- A shared transformer backbone is used for both tasks.
- Two task-specific heads are implemented for multi-task learning.

### ✅ Task 3: Training Considerations
Discussion Points:
- Freezing Strategies:
  - Freezing the entire network vs. freezing only the transformer backbone vs. freezing individual task heads.
- Transfer Learning:
  - Choice of pre-trained model (BERT-base for its robust language representations).
  - Strategy for freezing/unfreezing layers to balance general feature preservation with task-specific adaptation.

Rationale:
- A detailed discussion of the trade-offs between stability, efficiency, and adaptability is provided within the notebook.

### ✅ Task 4 (Bonus): Training Loop Implementation
Objective:
Demonstrate how to train the multi-task model using a hypothetical dataset.

## 🗃 Evaluation Criteria

The implementation is assessed based on:
- Model efficiency & performance
- Code clarity & structure
- Justification of design choices
- Handling of multi-task learning

## ✨ Future Improvements

- Fine-tuning on real datasets instead of hypothetical data.
- Hyperparameter tuning for improved performance.
- Deployment options for practical applications.

---

### 🔗 **Connect & Contribute**
Feel free to fork the repo, raise issues, or contribute via pull requests. 🚀  

💡 **GitHub Repository:** [ML-Apprentice-Project](https://github.com/lthornqu/ML-Apprentice-Project-sentence-transformers-multi-task-learning/)  

---

