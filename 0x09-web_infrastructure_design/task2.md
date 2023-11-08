# Description

A secure and monitored three server web infrastructure

## Additional elements

|     Element        |       Explanation       |
| ----------------------  | ------------------------- |
| Firewall   |   To protect the infrastructure from unauthorized access and potential security threats|
| SSL Certificate   |   To encrypt data transmitted between the user's browser and the server|
| Monitoring Clients   |   To maintain the performance, and security of the infrastructure.|

## Infrastructure Specifics

|     Question        |       Explanation       |
| ----------------------  | ------------------------- |
| How the monitoring tool is collecting data   | Monitoring clients gather application-specific metrics. Then send this data to the monitoring tool for analysis and visualization|
| Explain what to do if you want to monitor your web server QPS   |   Using monitoring tools to collect metrics related to incoming requests. This could include measuring the number of requests received per second.

## Infrastructure Issues

|     Issue        |       Explanation       |
| ----------------------  | ------------------------- |
| Why terminating SSL at the load balancer level is an issue   |   Becuse it is not end-to-end encryption, leving data valunable to attack|
| Why having only one MySQL server capable of accepting writes is an issue   |   If this server fails, write operations will be unavailable, leading to downtime and data consistency issues.|
| Why having servers with all the same components (database, web server and application server) might be a problem   |   It might lead to inefficient resource allocation. Separating components onto dedicated servers allows for better resource optimization.|
