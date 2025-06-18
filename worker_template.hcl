disable_mlock = true

hcp_boundary_cluster_id = "69ff95e4-8071-47b9-98e2-c4020c9c56c8"

listener "tcp" {
  address = "0.0.0.0:9202"
  purpose = "proxy"
}

worker {
  public_addr = "{{PUBLIC_ADDR}}"
  auth_storage_path = "/Users/raymon.epping/Documents/VSC/HashiCorp/Boundary/local_worker"
  tags {
    device = ["mac"]
    type   = ["local"]
  }
}
