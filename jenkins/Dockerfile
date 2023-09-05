# Use the official Jenkins image as the base image
FROM jenkins/jenkins:lts

# Skip initial setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Run the jenkins-plugin-cli to install plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt