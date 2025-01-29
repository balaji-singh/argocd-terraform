# argocd-terraform

## Description
This project provides Terraform configurations to manage ArgoCD installations and applications.

## Installation
To install the necessary components, run the following command:

```bash
tf init
```

## Usage
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

## Terraform Documentation
For more information on Terraform, refer to the official documentation: [Terraform Documentation](https://www.terraform.io/docs/index.html)
