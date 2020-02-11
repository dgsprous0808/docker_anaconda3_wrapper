# Docker: setup ubuntu and run anaconda3

Docker file to create an image for Ubuntu/Anaconda3 with a python program calling an underlying personal package dependency

## Files
1. Dockerfile - specifies image is ubuntu/anaconda3 and moves over the following three files
2. piethein.py - simple python program which imports 
3. grooks/__init__.py - required for python to recognize directory as a package directory (NORMALLY)
4. grooks/grooks.py - to run anyProblem() for a poem 

The NORMALLY is added above since I found by error that __init__.py could be omitted here.  Whether this is a quirk of Ubuntu or Docker or the two together, I do not know.  However, even if it is not needed it is unexpected that it would work without the __init__.py so it is done since it is expected behavior.

Based off of:
http://www.science.smith.edu/dftwiki/index.php/Tutorial:_Docker_Anaconda_Python_--_1

## To do this:
docker build -t docker_anaconda3_wrapper.docker_image .

docker run docker_anaconda3_wrapper.docker_image

 
