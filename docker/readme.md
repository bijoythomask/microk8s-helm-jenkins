'''
docker run \
  -u root \
  -p 10080:8080 \
  -v jenkins-data:/var/jenkins_home \ 
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /home/bijoy/:/root \ 
  jenkinsci/blueocean
'''

