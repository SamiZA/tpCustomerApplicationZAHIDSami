@echo off
call mvn clean package
call docker build -t fr.sami/tpCustomerApplicationZAHIDSami .
call docker rm -f tpCustomerApplicationZAHIDSami
call docker run -d -p 9080:9080 -p 9443:9443 --name tpCustomerApplicationZAHIDSami fr.sami/tpCustomerApplicationZAHIDSami