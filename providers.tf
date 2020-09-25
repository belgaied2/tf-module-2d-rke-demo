module "rke-infra" {
    aws_access_key = ""
    aws_secret_key = ""
    source = "github.com/rawmind0/tf-module-rancher-infra-aws"
    aws_region = "eu-central-1"
    node_all_count = 3
    instance_type = "t3a.large"
    ssh_key_file = "~/.ssh/MacOSsKey.pem"
    ssh_pub_file = "~/.ssh/MacOSsKey.pub"
    
}

resource "local_file" "cluster-yml" {
    content     =  templatefile("${path.module}/cluster-yml.tmpl", { nodes = module.rke-infra.rancher_nodes})
    filename = "${path.module}/cluster-generated.yml"
}