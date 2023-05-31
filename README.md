# Lambda Layer Creation

This repository provides a shell script to create a Lambda layer using Docker. The script builds a Docker image based on the provided Dockerfile and requirements.txt, and then runs a Docker container to create the layer. Finally, it moves the layer.zip file to the specified directory.

## Prerequisites

- Docker installed and properly configured on your system.

## Usage

1. Clone or download this repository to your local machine.

2. Open the `create_layer.sh` file in a text editor.

3. Set the `DIRECTORY` variable to the path where your `Dockerfile` and `requirements.txt` files are located.

4. Set the `LAYER_NAME` variable to the name you want to give your layer by default, it's `layer`.

5. Save the changes.

6. Open a terminal or command prompt and navigate to the directory where the `create_layer.sh` script is located.

7. Make the script executable by running the command: `chmod +x create_layer.sh`.

8. Run the script: `./create_layer.sh`.

9. The script will build the Docker image, run the container to create the layer, move the `layer.zip` file to the specified directory, and clean up by removing the Docker image.

10. After running the script, you should find the `layer.zip` file in the specified directory. You can then upload it to AWS Lambda as a layer and attach it to your Lambda functions as needed.

## Note

- Please ensure that you have Docker installed and configured properly on your system before running the script.

- Make sure to include the necessary `requirements.txt` file in the directory specified by the `DIRECTORY` variable. The script will install the Python packages listed in `requirements.txt` and include them in the Lambda layer.

- You may need to modify the Dockerfile or requirements.txt based on your specific requirements.
