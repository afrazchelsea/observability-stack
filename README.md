# observability-stack
A project demonstrating the creation of an Observability Stack using Prometheus, Alert Manager and Grafana.

[Diagram]() - 

Steps to recreate - 
* Clone the repo and navigate to `observability-stack/terraform-aws/prometheus-stack`
* Run Terraform init, plan and apply using the var file present at in the `vars` directory `terraform apply --var-file=../vars/ec2.tfvars`. This will provision the required AWS infrastructure. Make sure update the vars file with your desired variable values.
* Once the instance has been provisioned, SSH into it run the following commands below.
* Confirm if the EC2 userdata was executed successfully -
  ```
  tail /var/log/cloud-init-output.log`
* Clone the project code repo to the server
  ```
  git clone https://github.com/afrazchelsea/observability-stack.git
  cd observability-stack
* Run `make all`. This will fetch your server's current IP and replace the placeholder IP in your Prometheus Config files.
* Run `sudo docker-compose up -d`
* Now you can run the applications from the following links -
  * Prometheus: http://your-ip-address:9090
  * Alert Manager: http://your-ip-address:9093
  * Grafana: http://your-ip-address:3000
