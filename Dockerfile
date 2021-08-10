# init a base image (Alpine is small Linux distro)
FROM python:3.8.2-alpine
# define the present working directory
WORKDIR /flaskSampleApp
# copy the contents into the working dir
ADD . /flaskSampleApp
# run pip to install the dependencies of the flask app
RUN pip install -r requirements.txt
#open port 5000
EXPOSE 5000
# define the command to start the container
CMD ["python","app.py"]