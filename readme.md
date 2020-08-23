# Azure CosmosDB

> Azure ComosDB for MongoDB API

## Requirements

- Azure Account
- [Terraform](https://www.terraform.io/)

## Usage

```bash
# Login into Azure
az login

# Init terraform
terraform init

# Plan infra
terraform plan

# Apply infra
terraform apply

# Remove infra
terraform destroy
```

## Test Connection

Under `test` directory you can find a simple go application to test connection with CosmosDB.

## Troubleshooting

In case of error `(BadValue) Retryable writes are not supported. Please disable retryable writes by specifying "retrywrites=false" in the connection string or an equivalent driver specific config.`

Add `?retrywrites=false` to the end of your connection string
