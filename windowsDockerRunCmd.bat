docker run ^
--rm ^
-u root ^
-p 8080:8080 ^
-v jenkins-data:/var/jenkins_home ^
-v /var/run/docker.sock:/var/run/docker.sock ^
-v /Users/zgartner:/home ^
jenkinsci/blueocean
REM @pause