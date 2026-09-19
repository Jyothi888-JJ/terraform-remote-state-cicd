# Terraform Remote State and CI/CD

This project demonstrates Terraform remote state management using Amazon S3 and Terraform validation and planning through GitHub Actions.

## Architecture

```text
Developer
    |
    v
GitHub Repository
    |
    v
GitHub Actions
    |
    +-- Terraform Init
    +-- Terraform Format
    +-- Terraform Validate
    +-- Terraform Plan
    |
    v
AWS
    |
    +-- S3 State Backend
    |
    +-- Demo S3 Bucket
```

## Features

* Terraform remote state using Amazon S3
* Terraform configuration validation
* Terraform formatting checks
* Terraform plan through GitHub Actions
* Infrastructure as Code using Terraform

## Project Structure

```text
terraform-remote-state-cicd/
│
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── .gitignore
├── README.md
│
└── .github/
    └── workflows/
        └── terraform.yml
```

## Prerequisites

* AWS account
* AWS CLI configured
* Terraform installed
* GitHub account
* Appropriate AWS permissions

## Remote State

Terraform state is configured to use an Amazon S3 bucket as the remote backend.

The backend stores the Terraform state outside the local project directory, allowing infrastructure state to be managed centrally.

Before running Terraform, create an S3 bucket for the Terraform state and update the bucket name in `provider.tf`.

## Run Terraform Locally

Initialize Terraform:

```bash
terraform init
```

Format the configuration:

```bash
terraform fmt
```

Validate the configuration:

```bash
terraform validate
```

Review the execution plan:

```bash
terraform plan
```

Create the demo resource:

```bash
terraform apply
```

## GitHub Actions

The GitHub Actions workflow automatically runs:

```text
terraform init
terraform fmt -check
terraform validate
terraform plan
```

The workflow runs when changes are pushed to the `main` branch or when a pull request is created.

## Important Security Note

AWS credentials should not be hard-coded in Terraform files or GitHub repositories.

For production environments, GitHub Actions should authenticate to AWS using a secure method such as GitHub OIDC with an AWS IAM role.

## Key Terraform Concepts Demonstrated

* Remote Terraform state
* Amazon S3 backend
* Terraform initialization
* Terraform validation
* Terraform formatting
* Terraform plan
* GitHub Actions
* Infrastructure as Code
* CI/CD fundamentals

## Purpose

The purpose of this project is to demonstrate how Terraform infrastructure can be maintained using remote state and automatically validated and planned through a CI/CD pipeline.
