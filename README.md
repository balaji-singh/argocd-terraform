# argocd-terraform

## Description
This project provides Terraform configurations to manage ArgoCD installations and applications.

## Installation
To install the necessary components, run the following command:

```bash
tf init
```

## Project Structure

This project follows best practices for Terraform and Argo CD integration. Below is the structure:

- **modules/**: Contains reusable Terraform modules.
- **argocd-apps/**: Contains Argo CD application configurations.
- **argocd-server/**: Contains Argo CD server configurations.
- **environments/**: Contains separate directories for different environments (dev, staging, production).
- **backend.tf**: Configuration for remote state management.

## Usage
To initialize the project, run:
```bash
tf init
```

To plan and apply changes, use:
```bash
tf plan
```
```bash
tf apply
```

To apply the Terraform configurations, use:

```bash
tf apply
```

## argocd-apps
This section contains Terraform configurations to manage ArgoCD applications.

### Usage
To deploy applications using ArgoCD, use the following command:

```bash
tf apply -target=argocd_apps
```

## argocd-server
This section contains Terraform configurations to manage the ArgoCD server.

### Usage
To deploy the ArgoCD server, use the following command:

```bash
tf apply -target=argocd_server
```

## Best Practices

- Use remote state management for collaboration.
- Organize your configurations by environment.

## Terraform Documentation
For more information on Terraform, refer to the official documentation: [Terraform Documentation](https://www.terraform.io/docs/index.html)
