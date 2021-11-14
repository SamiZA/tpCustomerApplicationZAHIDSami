#!/bin/sh
mvn clean package && docker build -t fr.sami/tpCustomerApplicationZAHIDSami .
docker rm -f tpCustomerApplicationZAHIDSami || true && docker run -d -p 9080:9080 -p 9443:9443 --name tpCustomerApplicationZAHIDSami fr.sami/tpCustomerApplicationZAHIDSami