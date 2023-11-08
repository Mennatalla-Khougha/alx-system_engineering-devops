# Description

A simple web infrastructure composed of a single server with a LAMP stack.

## Infrastructure Specifics

|     Question        |       Explanation       |
| ----------------------  | ------------------------- |
| What is a server   |   It's physical or virtual computer that provide service to other computer|
| What is the role of the domain name   |   It Provides an easily remembered alias for an IP address of specific website|
| What type of DNS record 'www' is in 'www.foobar.com'   |   It'is a subdomain. It is a DNS record called a "CNAME" record|
| What is the role of the web server   |   It handles incoming requests, processes them, and sends back the static content (HTML, CSS, JavaScript, ...etc) |
| What is the role of the application server   |   It processes business logic, managing data, and serve the dynamic content|
| What is the role of the database   |   It handles data storage and process data-driven functionality|
| What is the server using to communicate with the computer of the user requesting the website   |   HTTP Protocol and TCP/IP Protocol|

## Infrastructure Issues

|     Issue        |       Explanation       |
| ----------------------  | ------------------------- |
| SPOF   |   If the one server is down the entire site is down|
| Downtime when maintenance needed   |   When you need to maintain or update any component in the server the site will be down since you only have one server|
| Cannot scale if too much incoming traffic   |   Since we only have the one server with too much traffic it can easily run out of resources|
