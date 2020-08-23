resource "azurerm_cosmosdb_account" "db_account" {
    name                = "${var.prefix}-db-account"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    offer_type          = "Standard"
    kind                = "MongoDB"

    enable_automatic_failover = false
    
    capabilities {
        name = "EnableMongo"
    }

    consistency_policy {
        consistency_level       = "BoundedStaleness"
        max_interval_in_seconds = 10
        max_staleness_prefix    = 200
    }

    geo_location {
        prefix            = "${var.prefix}-db-customid"
        location          = azurerm_resource_group.rg.location
        failover_priority = 0
    }
}
