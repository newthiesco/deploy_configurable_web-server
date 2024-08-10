# Terraform Configuration for Web Servers in Auto Scaling Group

This Terraform configuration sets up a scalable, resilient web server infrastructure in AWS. The configuration creates an Auto Scaling Group (ASG) of EC2 instances, ensuring that the web servers can automatically scale in and out based on demand. 

## Table of Contents
- [Terraform Configuration for Web Servers in Auto Scaling Group](#terraform-configuration-for-web-servers-in-auto-scaling-group)
  - [Table of Contents](#table-of-contents)
  - [Overview](#overview)
  - [Architecture](#architecture)
  - [Prerequisites](#prerequisites)
  - [Configuration](#configuration)
  - [Usage](#usage)
- [Terraform Configuration for Web Servers in Auto Scaling Group](#terraform-configuration-for-web-servers-in-auto-scaling-group-1)
  - [Table of Contents](#table-of-contents-1)
  - [Overview](#overview-1)
  - [Architecture](#architecture-1)
  - [Prerequisites](#prerequisites-1)
  - [Configuration](#configuration-1)
  - [Usage](#usage-1)

## Overview

This Terraform script does the following:
- Creates an EC2 Launch Template with the necessary configurations to run a web server.
- Deploys an Auto Scaling Group that manages the web servers based on desired metrics (e.g., CPU utilization).
- Configures a Load Balancer (optional) to distribute traffic across the instances in the ASG.
- Provisions security groups to manage access to the web servers.

## Architecture

The architecture deployed by this Terraform configuration includes:
- **Auto Scaling Group (ASG):** Automatically adjusts the number of EC2 instances based on the scaling policy.
- **Launch Template:** Defines the instance configuration, including the AMI, instance type, key pair, and security groups.
- **Security Group:** Controls the inbound and outbound traffic for the EC2 instances.
- **Elastic Load Balancer (optional):** Distributes incoming application traffic across multiple targets in multiple Availability Zones.

## Prerequisites

Before you start, ensure you have the following:
- [Terraform installed](https://www.terraform.io/downloads.html) (v1.0+)
- AWS account and configured credentials
- Basic knowledge of Terraform and AWS

## Configuration

1. **Variables:**
   - Edit the `variables.tf` file to set your preferred values for:
     - `region`: AWS region where the resources will be deployed.
     - `instance_type`: EC2 instance type for the web servers (default: `t2.micro`).
     - `ami_id`: The AMI ID for the web server instances.
     - `desired_capacity`: Number of instances to run by default in the ASG.
     - `max_size` and `min_size`: Maximum and minimum number of instances in the ASG.

2. **Launch Template:**
   - The `launch_template.tf` file contains the EC2 instance configuration.
   - You can customize the user data script in this template to install necessary software on the EC2 instances (e.g., Apache, Nginx).

3. **Auto Scaling Group:**
   - The `autoscaling.tf` file defines the ASG, its scaling policies, and associated target groups for load balancing.

4. **Security Groups:**
   - The `security_groups.tf` file sets up security rules to allow HTTP/HTTPS traffic to the web servers.

5. **Load Balancer (Optional):**
   - If you wish to use a Load Balancer, the `load_balancer.tf` file contains the configuration. Uncomment this section and configure as needed.

## Usage

1. **Initialize Terraform:**
   ```bash
   terraform init


Certainly! Below is an example of a README.md file that describes a Terraform configuration for setting up web servers in an Auto Scaling Group (ASG):

markdown

# Terraform Configuration for Web Servers in Auto Scaling Group

This Terraform configuration sets up a scalable, resilient web server infrastructure in AWS. The configuration creates an Auto Scaling Group (ASG) of EC2 instances, ensuring that the web servers can automatically scale in and out based on demand. 

## Table of Contents
- [Terraform Configuration for Web Servers in Auto Scaling Group](#terraform-configuration-for-web-servers-in-auto-scaling-group)
  - [Table of Contents](#table-of-contents)
  - [Overview](#overview)
  - [Architecture](#architecture)
  - [Prerequisites](#prerequisites)
  - [Configuration](#configuration)
  - [Usage](#usage)
- [Terraform Configuration for Web Servers in Auto Scaling Group](#terraform-configuration-for-web-servers-in-auto-scaling-group-1)
  - [Table of Contents](#table-of-contents-1)
  - [Overview](#overview-1)
  - [Architecture](#architecture-1)
  - [Prerequisites](#prerequisites-1)
  - [Configuration](#configuration-1)
  - [Usage](#usage-1)

## Overview

This Terraform script does the following:
- Creates an EC2 Launch Template with the necessary configurations to run a web server.
- Deploys an Auto Scaling Group that manages the web servers based on desired metrics (e.g., CPU utilization).
- Configures a Load Balancer (optional) to distribute traffic across the instances in the ASG.
- Provisions security groups to manage access to the web servers.

## Architecture

The architecture deployed by this Terraform configuration includes:
- **Auto Scaling Group (ASG):** Automatically adjusts the number of EC2 instances based on the scaling policy.
- **Launch Template:** Defines the instance configuration, including the AMI, instance type, key pair, and security groups.
- **Security Group:** Controls the inbound and outbound traffic for the EC2 instances.
- **Elastic Load Balancer (optional):** Distributes incoming application traffic across multiple targets in multiple Availability Zones.

## Prerequisites

Before you start, ensure you have the following:
- [Terraform installed](https://www.terraform.io/downloads.html) (v1.0+)
- AWS account and configured credentials
- Basic knowledge of Terraform and AWS

## Configuration

1. **Variables:**
   - Edit the `variables.tf` file to set your preferred values for:
     - `region`: AWS region where the resources will be deployed.
     - `instance_type`: EC2 instance type for the web servers (default: `t2.micro`).
     - `ami_id`: The AMI ID for the web server instances.
     - `desired_capacity`: Number of instances to run by default in the ASG.
     - `max_size` and `min_size`: Maximum and minimum number of instances in the ASG.

2. **Launch Template:**
   - The `launch_template.tf` file contains the EC2 instance configuration.
   - You can customize the user data script in this template to install necessary software on the EC2 instances (e.g., Apache, Nginx).

3. **Auto Scaling Group:**
   - The `autoscaling.tf` file defines the ASG, its scaling policies, and associated target groups for load balancing.

4. **Security Groups:**
   - The `security_groups.tf` file sets up security rules to allow HTTP/HTTPS traffic to the web servers.

5. **Load Balancer (Optional):**
   - If you wish to use a Load Balancer, the `load_balancer.tf` file contains the configuration. Uncomment this section and configure as needed.

## Usage

1. **Initialize Terraform:**
   ```bash
   terraform init
   ```bash
   terraform plan

2. **Apply the configuration:**
 ```bash
terraform apply

3. Access the Web Servers:

Once the apply is complete, you can access your web servers through the Load Balancer's DNS name or directly via the public IPs of the instances.


**License**

This project is licensed under the MIT License - see the LICENSE file for details.