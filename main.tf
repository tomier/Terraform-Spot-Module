provider "aws" {
  region  = "${var.aws_region}"
  profile = "${var.aws_profile}"
}

#----------------------- Request a Spot fleet-----------------

resource "aws_spot_fleet_request" "auditworkerspot" {
  iam_fleet_role      = "${var.auditworker_iam_fleet_role}"
  spot_price          = "${var.auditworker_spot_price}"
  allocation_strategy = "${var.auditworker_allocation_strategy}"
  wait_for_fulfillment = "${var.auditworker_wait_for_fulfillment}"
  target_capacity     = "${var.auditworker_target_capacity}"
  replace_unhealthy_instances  =  "${var.auditworker_replace_unhealthy_instances}"
  valid_until 	       = "${var.auditworker_valid_until}"
  excess_capacity_termination_policy   =  "${var.auditworker_excess_capacity_termination_policy}"


  launch_specification {
    instance_type          = "${var.auditworker_instance_type}"
    ami      	       =  "${var.auditworker_ami}"
    key_name	       =  "${var.auditworker_key_name}"
    availability_zone      =  "${var.auditworker_availability_zone}"
    vpc_security_group_ids = ["${var.auditworker_vpc_security_group_ids}"]
    subnet_id	       = "${var.auditworker_subnet_id}"
    associate_public_ip_address = "${var.auditworker_associate_public_ip_address}"

    root_block_device {
      delete_on_termination  = "${var.auditworker_delete_on_termination}"
    }

    tags {
      Name = "${var.auditworker_name}"
      Env  =  "${var.auditworker_env}"
      InstanceType  =  "${var.auditworker_instancetype}"
    }

   }

}
