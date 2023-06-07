# ft_onion
This is a 42 Cybersecurity-Bootcamp project.
Hidden service in Tor mounted in a docker container.

## Project description

This project aims to create a secure and private website hosted on the Tor network using a Docker container.
This project will utilize Nginx as the web server and SSH for remote server access.


Key Features:
* Hosting a dynamic website
* Tor Hidden Service
* Nginx Server
* HTTP Acces on port 80
* SSH Acces on Port 4242
* Firewall and Port Restrictions

## Prerequisites

Before running the project, makes sure you have the following requirements met:

* Docker: Ensure that Docker is installed on your machine. Visit the official Docker website (https://www.docker.com/) for installation instructions specific to your operating system.
* Unix Enviroment: The project has been developed and tested in a Unix enviroment. While it may work in other OS's, I recommend using a Unix-based system or a GitBash terminal.

## USAGE INSTRUCTIONS

1 Clone the repository to your local machine:
<pre><code>git clone https://github.com/AppacheAZ/ft_onion.git name_your_repository</code></pre>

2 Navigate to the project directory:
<pre><code>cd your-repository</code></pre>

3 Configure the configuration files according to your needs if you want it.
*'nginx.conf'
*'torrc'

4 Run the 'start.sh' script to automate the creation of the Docker image and container, as well as obtaining the .onion URL(remember that the docker daemon is enabled):
This script will remove all the containers with the name 'pruebanginx' and create a new with the same name
<pre><code>./start.sh</code></pre>
