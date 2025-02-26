# Use a lightweight Python image as the base
FROM python:3.8-slim

# Install system dependencies and Rust (needed by tokenizers)
RUN apt-get update && apt-get install -y build-essential curl
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Set the working directory in the container
WORKDIR /app

# Copy the minimal requirements file into the container.
# (Make sure your requirements.txt does NOT list sentence-transformers)
COPY requirements.txt .

# Upgrade pip and install dependencies (this will not install torch since it's not listed)
RUN pip install --upgrade pip && pip install -r requirements.txt

# Install sentence-transformers without its dependencies to avoid pulling torch
RUN pip install sentence-transformers --no-deps

# Install CPU-only PyTorch (torch, torchvision, torchaudio)
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

# Install Jupyter Lab explicitly
RUN pip install jupyterlab

# Copy your project notebook into the container
COPY main_ML_Apprentice_Project.ipynb .

# Expose port 8888 for Jupyter Lab access
EXPOSE 8888

# Disable automatic browser launch for Jupyter Lab
ENV JUPYTER_ENABLE_LAB=yes

# Command to run Jupyter Lab when the container starts
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root"]
