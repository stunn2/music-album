Following our talk, can you please do the following task:

You are provided with a server code and a Redis DB file [link]. The server exposes a web API that returns a music album name given an integer ID. The server connects to a running Redis instance that contains the actual mapping between IDs and musical album names.

You are asked to build an environment that will run a distributed web server with a single instance of a Redis DB. The environment should be built using minikube (a local Kubernetes).

Server documentation

You can find the server code in the attached above archive. Please build the server executable using the latest version of the Go language environment and the command go build. Please add the executable to the package you submit. Assume x86-64 architecture on Linux (ELF).

Once you have the executable, you can run it with the following parameters:

• <redis server>:<port> a command like parameter that provides the Redis server connection details to connect to the Redis server.
• The password to the Redis server should be stored in the PASSWORD environment variable.

For example the following command line will run the server that assumes that Redis is running at localhost on port 6379:

./server localhost:6379

The web server exposes the following API on port 9090 (HTTP): /api/v1/music-albums?key=<INT> that returns an array of albums: for example:

Request: /api/v1/music-albums?key=100
Response: {"album":"Iron Maiden"}

Redis DB documentation

You are provided with the rbd file called “data.rdb”. The rbd expects Redis version 7.2 and up.

Additional specific requirements

1. The environment should run a single instance of the redis server with several instances of the web server. The exact number is up to you.
2. The Redis instance should be password protected, but please keep the default user.
3. The deployment should be isolated from other workloads
4. Reasonable but limited system resources should be provided to each web server instance.
5. The connection from the client side to the environment should be secured by TLS. The certificate can be self-signed. The communication within the environment can be unencrypted.
6. The server puts logs in the standard output. You are asked to store those in persistent storage.
7. Whenever you need to make a decision on the environment configuration please make it as you would do in a real production environment.
8. Please use one of the popular IaC tools or provide a script that can be run locally to build the environment
9. We are going to run your submission on a clean install of Ubuntu 22.04.3 LTS. Please assume the latest version of minikube is installed. Other than that please outline what additional software needs to be installed and what exact commands should be run to get the environment running.

If you have any additional questions please feel free to just reply to this email.
