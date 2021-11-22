resource "google_cloud_run_service" "cloud_run_service" {
  name        =   var.cloud_run_name

  location    =   var.cloud_run_location
  
  traffic {
      revision_name   =   var.cloud_run_traffic_revision_name
      percent         =   var.cloud_run_traffic_percent
      latest_revision  =   var.cloud_run_traffic_latest_revision
  }

  template {
    metadata {
      labels              =   var.cloud_run_template_metadata_labels
      generation          =   var.cloud_run_template_metadata_generartion
      resource_version    =   var.cloud_run_template_metadata_resource_version
      self_link           =   var.cloud_run_template_metadata_self_link
      uid                 =   var.cloud_run_template_metadata_uid
      namespace           =   var.cloud_run_template_metadata_namespace
      annotations         =   var.cloud_run_template_metadata_annotations
      name                =   var.cloud_run_template_metadata_name
    }
    spec {
      containers {
        working_dir     =   var.cloud_run_template_spec_containers_working_dir
        args            =   var.cloud_run_template_spec_containers_args
        env_from {
          prefix      =   var.cloud_run_template_spec_containers_env_from_prefix
          config_map_ref {
            optional        =   var.cloud_run_template_spec_containers_env_from_config_map_ref_optional
            local_object_reference {
              name        =   var.cloud_run_template_spec_containers_env_from_config_map_ref_local_object_reference_name
            }
          }
          secret_ref {
            local_object_reference {
              name        =   var.cloud_run_template_spec_containers_env_from_secret_ref_local_object_reference_name
            }
            optional        =   var.cloud_run_template_spec_containers_env_from_secret_ref_optional
          }
        }
        image                   =   var.cloud_run_template_spec_containers_image
        command                 =   var.cloud_run_template_spec_containers_command
        env  {
          name                =   var.cloud_run_template_spec_containers_env_name
          value               =   var.cloud_run_template_spec_containers_env_value
          
        }
        ports  {
          name            =   var.cloud_run_template_spec_containers_ports_name
          protocol        =   var.cloud_run_template_spec_containers_ports_protocol
          container_port  =   var.cloud_run_template_spec_contaiiners_ports_container_port
        }
        resources {
          limits          =   var.cloud_run_template_spec_containers_resources_limits
          requests        =   var.cloud_run_template_spec_containers_resources_requests
        }
        
      }
      
      container_concurrency   =   var.cloud_run_template_spec_container_concurrency
      timeout_seconds         =   var.cloud_run_template_spec_timeout_seconds
      service_account_name    =   var.cloud_run_template_spec_service_account_name
      
      serving_state                               =   var.cloud_run_template_spec_serving_state  
    }
  }
}