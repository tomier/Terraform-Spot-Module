aws_profile = "default"
aws_region = "us-west-2"
auditworker_iam_fleet_role = "arn:aws:iam::xxxxxxx-xxxxx:role/aws-service-role/spotfleet.amazonaws.com/AWSServiceRoleForEC2SpotFleet"
auditworker_spot_price = "0.119"
auditworker_allocation_strategy = "diversified"
auditworker_wait_for_fulfillment = true
auditworker_target_capacity = "1"
auditworker_replace_unhealthy_instances = true
auditworker_valid_until = "2019-11-04T20:44:20Z"
auditworker_excess_capacity_termination_policy = "Default"
auditworker_instance_type = "c4.large"
auditworker_ami = "ami-xxxxxxxxxxx"
auditworker_key_name = "example-key-name"
auditworker_availability_zone = "us-west-2b"
auditworker_vpc_security_group_ids = "sg-xxxxxxxx, sg-xxxxxxxx"
auditworker_subnet_id = "subnet-xxxxxxxx"
auditworker_associate_public_ip_address = "false"
auditworker_delete_on_termination = true
auditworker_name = "auditworker-spot"
auditworker_env = "production"
auditworker_instancetype = "spot"
