# Serverless Application

This repository contains a serverless application designed to provide student information. The architecture leverages AWS services to ensure scalability, reliability, and ease of deployment.

## Table of Contents
- [Architecture](#Architecture)
- [Prerequisites](#prerequisites)
- [Setup Instructions](#setup-instructions)
- [Deployment](#deployment)
- [Lambda Functions](#lambda-functions)
- [Frontend Files](#frontend-files)
- [Infrastructure as Code](#infrastructure-as-code)
- [Contributing](#contributing)
- [Acknowledgements](#Acknowledgements)

## Architecture

![Serverless Application Diagram](Application.png)

The application architecture consists of the following components:

- **Frontend**: Deployed to S3, served using CloudFront, and DNS managed via Route 53.
- **Backend**: Includes AWS Lambda functions for adding and retrieving tasks, with a DynamoDB database for data storage.
- **Infrastructure**: Managed using Terraform to automate the creation and configuration of all AWS resources.

---
## Prerequisites

To set up and deploy this project, ensure you have the following installed and configured:

1. **Terraform**: [Download Terraform](https://www.  terraform.io/downloads.html)
2. **AWS CLI**: [Install AWS CLI](https://aws.amazon.com/cli/) and configure it with your AWS credentials:

   ```bash
   aws configure
3. **Python**: [Download Python](https://www.python.org/downloads/) for creating and packaging the Lambda functions.
4. **Node.js**: [Download Node.js](https://nodejs.org/) for building the frontend files.

---

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/youssef-138/serverless.git
   cd serverless

2. **Navigate to the Project Directory**:
   ```bash
   cd serverless
3. **Initialize Terraform**:
   ```bash
   terraform init
4. **Apply the Terraform configuration to provision the AWS resources**:
   ```bash
   terraform apply
   
---
## Deployment


### Build and Deploy the Frontend:
1. Upload the frontend files to **S3**.
2. Configure **CloudFront** and **Route 53** for serving the application.

### Deploy the Lambda Functions:
1. Create the Lambda functions for:
   - **Adding Student Data**
   - **Retrieving Student Data**
2. Set up:
   - **Triggers**
   - **Permissions**
   - **API Gateway** 
---
## Lambda Functions

 - **GetStudentData** : This Lambda function allows students to add their data  to the DynamoDB database

 - **InsertStudentData** : This Lambda function fetches student data  stored in DynamoDB.

You can find the Lambda functions code under the **lambda_functions/** directory.
---
## Frontend Files
The frontend files for the application can be found in the **frontend-files/** directory. These are static files that can be deployed to S3.
---
## Infrastructure as Code
erraform scripts in the **terraform/** directory automate the infrastructure setup, including:

- **S3 bucket for hosting frontend files**
- **CloudFront distribution**
- **Route 53 DNS setup**
- **DynamoDB table**
- **Lambda functions and permissions**
- **API Gateway**
- **ACM for SSL certificates**
---
## Contributing

Contributions are welcome! If you have suggestions for improvements or features, please create an issue or submit a pull request.

---
## Acknowledgements

 - [AWS Documentation](https://docs.aws.amazon.com/)
 - [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
 



