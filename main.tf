terraform {
requried_providers {
azurerm = {
source = "hashicorp/azurerm"
version = "4.77.0"
}
}
}

provider "azurerm" {
features {}
}


Variable = "rg_details"

resource "azurerm_resource_group" "rgs" {

for_each = var.rg_details

name = each.value.name
location = each.value.location
managed_by = each.value.managed_by

}

rg_details = {

RG-1 = {name = "Zain01" , location = "Centralindia" , managed_by = "Bedi"}
RG-2 = {name = "Zain02" , location = "westus" , managed_by = "devraj"}
RG-3 = {name = "Zain03" , location = "eastus" , managed_by = "satinder"}
}
