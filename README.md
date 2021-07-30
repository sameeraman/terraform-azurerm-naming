# Terraform Azure Resource Naming Module 
This repo provides resource naming for terraform deployments in a moduler format. 

This supports all azure resource types in terraform. when calling the resource type just remove the 
## Usage Examples

```json
module "naming" {
  source              = "github.com/sameeraman/terraform-azurerm-naming"
  company-prefix      = "fbk"
  region-prefix       = "use1"
  environment-prefix  = "prd"
}

// Output - fbk-use1-prd-rg-c0rm
resource "azurerm_resource_group" "rg1" {
  name     = module.naming.resource_group.name_unique
  location = "East US"
}

// Output - fbk-use1-prd-rg
resource "azurerm_resource_group" "rg2" {
  name     = module.naming.resource_group.name
  location = "East US"
}

// Output - fbk-use1-prd-rg-001
resource "azurerm_resource_group" "rg3" {
  name     = join("-", [module.naming.resource_group.name,"001"])
  location = "East US"
}
```