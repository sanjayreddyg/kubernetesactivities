FROM maven:3-openjdk-11
RUN git clone https://github.com/openmrs/openmrs-core.git && cd openmrs-core && mvn clean install
WORKDIR openmrs-core/webapp
CMD["mvn","jetty:run"]