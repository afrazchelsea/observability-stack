# EC2 Instance Variables
region         = "us-west-2"
ami_id         = "ami-03fd0aa14bd102718"
instance_type  = "t4g.micro"
key_name       = "afraz-aws-key"
instance_count = 1
volume-size = 20

# VPC id
vpc_id  = "vpc-001fa0d9877ae3353"
subnet_ids     = ["subnet-0a1ef836e60336f08"]

# Ec2 Tags
name        = "observability-stack"
owner       = "afraz"
environment = "dev"
cost_center = "salary"
application = "monitoring"

# CIDR Ingress Variables
create_ingress_cidr        = true
ingress_cidr_from_port     = [22, 80, 443, 9090, 9100, 9093, 3000]  # List of from ports
ingress_cidr_to_port       = [22, 80, 443, 9090, 9100, 9093, 3000]  # List of to ports
ingress_cidr_protocol      = ["tcp", "tcp", "tcp", "tcp", "tcp", "tcp", "tcp"]        # Protocol for all rules (you can add more if needed)
ingress_cidr_block         = ["0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0"]
ingress_cidr_description   = ["SSH", "HTTP", "HTTPS", "Prometheus", "Node-exporter", "Alert manager", "Grafana"]

# CIDR Egress Variables
create_egress_cidr    = true
egress_cidr_from_port = [0]
egress_cidr_to_port   = [0]
egress_cidr_protocol  = ["-1"]
egress_cidr_block     = ["0.0.0.0/0"]

