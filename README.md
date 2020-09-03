# Jenkins pipeline project
## Steps to try running this pipeline
1. local jenkins server running
2. jenkins container should have following two volume mounts:

   - $PWD/jenkins_home:/var/jenkins_home
   - "/var/run/docker.sock:/var/run/docker.sock"

3. jenkins server has docker and docker-compose installed
4. create a pipeline job in jenkins UI, provide this repo link and setup github credentials
5. in jenkins configuration, create three env variables
   name: DOCKERHUB_USER | value: your-dockerhub username
   name: PASS | value: your-dockerhub credentials
   name: _JAVA_OPTIONS | value: -Djdk.net.URLClassPath.disableClassPathURLCheck=true
   name: WORKSPACE | value: jenkins/workspace/absolute/directory/location
6. build this job
7. verify resulting image output in dockerhub account
