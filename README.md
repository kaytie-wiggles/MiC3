# MiC3
Name: Katlego.Mohlala
                                        Problem Sets
Problem Set 1: 3 Tasks (A, B, C) 
Problem Set 2: audio_video_call_calc Notebook

Workflow
1. API Workflow for Problem Set 1:
A REST API is developed using Flask to calculate time differences between timestamps.
Docker is used to containerize the API.
The API handles requests and provides a response with the calculated time differences and node ID details.

+-----------------+       +-------------------+
|   Client (API)  |  ---> | Flask API Service |  (Container Node 1)
| (Postman, Curl) |       |  (Node ID: node-1)|
+-----------------+       +-------------------+
                             |
                             v
+-----------------+       +-------------------+
|   Client (API)  |  ---> | Flask API Service |  (Container Node 2)
| (Postman, Curl) |       |  (Node ID: node-2)|
+-----------------+       +-------------------+
To run the API open a terminal and run command: python TaskB
Then open PostMan and send a POST request: 
        POST http://127.0.0.1:5001/timestamp_difference
        REQUEST BODY: {"timestamps":[["Sun 10 May 2015 13:54:36 -0700", "Sun 10 May 2015 13:54:36 -0000"], 
["Sat 02 May 2015 19:54:36 +0530", "Fri 01 May 2015 13:54:36 -0000"]]}

Docker
    docker build -t taskb .
    docker run -d -p 5001:5001 taskb


2. Data Processing Workflow:
Built on Jupyter notebooks.
All you need to do is have jupyter notebook setup
    Installation and Setup
Step 1: Install Python and Jupyter Notebook
If you don’t have Python or Jupyter Notebook installed, follow these instructions:

    Install Python by downloading
    Install Jupyter Notebook:
        Open a terminal or command prompt and run: pip install notebook
                                                pip install notebook


    To run the Jupyter Notebook:
        Step 1: Clone the Repository or Download the Files
        Launch Jupyter Notebook
        Open a terminal or command prompt, go to the directory containing your files, and run: jupyter notebook
        Import the libraries
        Then run the cells