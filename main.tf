module "cloud_run"{

    source = "./modules"


    sql_cloud_run_name = var.sql_cloud_run_name
    sql_cloud_run_location = var.sql_cloud_run_location 



} 