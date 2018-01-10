# ECEN 5273: Network Systems: Programming Assignment 2 #

Goal: To create a HTTP webserver that handles multiple simultaneous requests from users.

Programming Language - C

File structure:
```
./README.txt
./server.c
./ws.conf
./www/
```
server.c: The program accepts HTTP requests from multiple clients and responds
          to them. If the request is valid it serves the client, if request is
          invalid it responds with the error.

ws.conf: Configuration file for the server with information such as port number,
         root directory, default files, accepted content types and keep alive time.

Methods Supported: GET and PUT

HTTP Version Support: HTTP/1.0  and HTTP/1.1

Pipelining Support: Yes

Errors Handled: 
```
400 Bad request
404 File not found
500 Internal Server Error
501 Not Implemented
```
Testing using web browser:
```
 http://localhost:<Port number>/index.html
```

Testing using Telnet:
```
GET - (echo -en "GET /index.html HTTP/1.1\nHost: localhost\nConnection: keep-alive\n\n"; sleep 5) | telnet 127.0.0.1 <Port number>

POST - (echo -en "POST /test.html HTTP/1.1\nHost: localhost\nConnection: keep-alive\n\n<Any message string>"; sleep 5) | telnet 127.0.0.1 <Port number>

Multiple GET requests - (echo -en "GET /test.html HTTP/1.1\nHost: localhost\nConnection: keep-alive\n\n"; sleep 5; echo -en "GET /test1.html HTTP/1.1\nHost: localhost\nConnection: keep-alive\n\n"; sleep 5) | telnet 127.0.0.1 <Port Number>
```
Execution:
Server side - 
```
Go to the folder.
Run make.
Run the server using ./webserver
```
