# Lab-1-UsingTerraformWithAzureCloud
In this lab, you will learn to use Terraform to build resources in Azure Cloud in addition to setting up the following tools for development using [Chocolatey](https://chocolatey.org/):
- Terraform by Hashicorp
- Azure CLI
- Visual Studio Code

## Prerquisites
- An Azure Subscription [Sign up for free](https://azure.microsoft.com/en-us/free/)
- Some knowledge of how to use Microsoft Azure through the UI
- Basic programming or scripting knowledge
- Basic Terraform knowledge is a plus

#

## Lab 1.1 - Install and Configure Tools
- Install Chocolatey
- Install Azure CLI
- Install Terraform
- Install and Configure VSCode
- Install Terraform Extension for VSCode
- Install PowerShell Extension for VSCode
- Install PowerShell 7 (Optional)
    
## Lab 1.2 - Navigating the Terraform Provider Documentation (https://registry.terraform.io/)
- Browsing and Searching Providers
- Finding the AzureRM Provider
- Using the AzureRM Provider in your code
- Browsing the AzureRM Provider documentation
- Viewing Example Usage
- Supported Arguments
- Exported Attributes
- Timeouts
- Import Example

## Lab 1.3 - Creating a Terraform Configuration
- Setting up a folder for Terraform files
- Creating Terraform Files
- Setting up providers
- Creating a Resource Group
- Creating a Storage Account
- Logging into AzureCLI
- Initializing a Terraform Configuration
- Planning a Terraform Configuration
- Applying a Terraform Configuration
- Destroying Resources created by a Terraform Configuration

## Lab 1.4 - Making a Terraform Configuration more Flexible
- Tying resouces togething in a configuration
- Using Variables
- Using Locals
- Using Outputs
- Using Data lookups
- Organizing your Terraform Configuration
- Creating Resource Dependencies

## Lab 1.5 - Deeper Dive Into Variables
- Setting up a variables.tf file
- Variable types
- Default values
- Using Sensitive Variables
- Using validaton rules for variables
- Nullable variables
- Using variables on the command line
- Using a .tfvars file

## Lab 1.6 - Using the Terraform State
- Where is the local state stored
- Listing resources from the current state
- Showing the state with 'terraform show'
- Removing resources from the state
- Importing resources into the state

## Lab 1.7 - Using Modules
- Using modules from the Terraform Registry
- Build and use a local module