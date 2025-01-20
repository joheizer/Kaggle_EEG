# Use a lightweight Python image
FROM python:3.12-slim
# What it does: Specifies the base image for your container. python:3.11-slim is a minimal version of Python 3.11 with fewer dependencies, making the container smaller and faster.
# Why: Using a slim image reduces build times and makes the container lightweight.

# Set the working directory in the container
WORKDIR /app
# What it does: Sets /app as the working directory where all subsequent commands will run. Files will also be copied here.
# Why: Ensures that the container’s operations (like running scripts) happen in a specific directory.

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

# Add Poetry to PATH
ENV PATH="/root/.local/bin:$PATH" 

# Copy your project files into the container  -> TBC
COPY . . 
# What it does: Copies all the files from your local project directory (on your host machine) to the /app directory inside the container.
# Why: Ensures that your Python scripts, dependencies, and data are available inside the container.

# Run your Python script  -> TBC
CMD ["python", "main.py", "run", "python"] 
# What it does: Specifies the command that runs when the container starts. In this case, it runs the main.py script using Python.
# Why: Automates the execution of your application when the container starts.