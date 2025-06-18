disable_mlock = true

hcp_boundary_cluster_id = "cluster_id"

listener "tcp" {
  address = "0.0.0.0:9202"
  purpose = "proxy"
}

worker {
  public_addr = "{{PUBLIC_ADDR}}"
  auth_storage_path = "/Your/Folder/Boundary/local_worker"
  tags {
    device = ["mac"]
    type   = ["local"]
  }
}
