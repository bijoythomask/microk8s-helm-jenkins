sudo docker run \
  --rm \
  -u root \
  -d \
  -p 10080:8080 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /home/bijoy:/root \
  --env JAVA_OPTS="-Xmx2048m -XX:MaxPermSize=512m -Dorg.jenkinsci.plugins.durabletask.BourneShellScript.HEARTBEAT_CHECK_INTERVAL=3600" \
  jenkinsci/blueocean
