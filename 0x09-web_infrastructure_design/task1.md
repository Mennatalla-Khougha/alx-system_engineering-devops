# Description

A three servers web infrastructure

## Additional elements

|     Element        |       Explanation       |
| ----------------------  | ------------------------- |
| Load balancer   |   To distributes incoming requests across multiple application servers|
| Server   |   To handle high levels of incoming traffic.|

## Infrastructure Specifics

|     Question        |       Explanation       |
| ----------------------  | ------------------------- |
| What distribution algorithm your load balancer is configured with and how it works   |   The round-robin distribution algorithm. It works by cycling through the list of available servers|
| Is your load-balancer enabling an Active-Active or Active-Passive setup, explain the difference between both   |   This setup is Active-Active, where both servers are actively serving requests. Active-Passive where the passive server used as a backup server|
| How a database Primary-Replica cluster works   |   The Primary node handles write operations. The Replica node replicates data from the Primary node|
| What is the difference between the Primary node and the Replica node in regard to the application   |   The Primary node handles write operations to the database. The Replica node handles read operations.|

## Infrastructure Issues

|     Issue        |       Explanation       |
| ----------------------  | ------------------------- |
| Where are SPOF   |   If the load balancer went down no traffic will pass to the servers|
| Security issues (no firewall, no HTTPS)   |   Lack of proper firewall configuration exposes the servers to potential security threats. The lack of HTTPS encryption exposes user data to potential hacks.|
| No monitoring   |   We might not be able to detect performance issues, security breaches, or impending failures|
