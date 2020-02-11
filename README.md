# Docker: setup ubuntu and run anaconda3

Docker file to create an image Ubuntu/Anaconda3 with a simple 'hello world' style python script to show everything works.  

Based off of:
http://www.science.smith.edu/dftwiki/index.php/Tutorial:_Docker_Anaconda_Python_--_1

## To do this:
docker build -t docker_anaconda3_wrapper.docker_image .

docker run docker_anaconda3_wrapper.docker_image

 
