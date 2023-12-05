# Assignment 2.12

1) Succinctly explain what is Cloud Architecture Design - Reliability?

Reliability is basically a fault test you applcations.

Reliable cloud architectures incorporates redundancy, fault tolerance and scalability to handle workloads.

It involves designing systems that quick recovery from system failures to minimize downtime. It includes the distribution of resources across AZs and using load balancers to ensure sufficient resources allocated.

Reliability is to maximize system uptime enhance resilience against failures and maintain consistent performance.

2) Choose your own system, then succinctly explain how would you implement Cloud Architecture Design - Reliability on your system.

![Cloud architecture design](<Assignment 2.12.png>)

- Deploying multiple AZ to ensure redundancy and fault tolerance
- Load Balancing to evenly distribute incoming traffic across multiple EC2 instances to minimize risk of overloading
- Configure automated backups for RDS database to S3 enabling point-in-time recovery
- Setup monitoring and logging for review of performance and errors while system is live.
- Plan and develop a Disaster recovery plan