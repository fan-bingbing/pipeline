# Jenkins pipeline project
## Steps to try running this pipeline
1. local jenkins server running
2. jenkins server has docker and docker-compose installed
3. create a pipeline job in jenkins UI, provide this repo link and setup github credentials
4. in jenkins configuration, create three env variables
   name: DOCKERHUB_USER | value: your-dockerhub username
   name: PASS | value: your-dockerhub credentials
   name: _JAVA_OPTIONS | value: -Djdk.net.URLClassPath.disableClassPathURLCheck=true
5. build this job
6. verify resulting image output in dockerhub account
