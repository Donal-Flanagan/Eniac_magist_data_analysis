#!/bin/bash

# Define the environment name and path
ENV_NAME="magist_env"
ENV_PATH="./env"

# Create the environment
echo "Creating Conda environment..."
conda env create --prefix $ENV_PATH --file environment.yml

# Activate the environment
echo "Activating Conda environment..."
source activate $ENV_PATH

# Run post-creation scripts if needed
if [ -f "post_activate.sh" ]; then
    echo "Running post-activation script..."
    chmod +x post_activate.sh
    ./post_activate.sh
fi

echo "Setup complete!"
