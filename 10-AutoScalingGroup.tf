
# Australia /////////////////////////////////////////////////
resource "aws_autoscaling_group" "australia_asg" {
  name_prefix           = "australia-auto-scaling-group-"
  min_size              = 3
  max_size              = 15
  desired_capacity      = 6
  vpc_zone_identifier   = [
    aws_subnet.private-ap-southeast-2a.id,
    aws_subnet.private-ap-southeast-2b.id,
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.australia_tg.arn]

  launch_template {
    id      = aws_launch_template.australia_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "australia-instance"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "australia_scaling_policy" {
  name                   = "australia-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.australia_asg.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "australia_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.australia_asg.name
  alb_target_group_arn = aws_lb_target_group.australia_tg.arn  #aws_lb_target_group.australia_tg.arn
}

# California ////////////////////////////////////////////////
resource "aws_autoscaling_group" "california_asg" {
  name_prefix           = "california-auto-scaling-group-"
  min_size              = 3
  max_size              = 15
  desired_capacity      = 6
  vpc_zone_identifier   = [
    aws_subnet.private-us-west-1a.id,
    #aws_subnet.private-us-west-1b.id,
    aws_subnet.private-us-west-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.california_tg.arn]

  launch_template {
    id      = aws_launch_template.california_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "california-instance"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "california_scaling_policy" {
  name                   = "california-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.california_asg.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "california_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.california_asg.name
  alb_target_group_arn   = aws_lb_target_group.california_tg.arn
}
# Hong Kong /////////////////////////////////////////////////
resource "aws_autoscaling_group" "hongkong_asg" {
  name_prefix           = "hongkong-auto-scaling-group-"
  min_size              = 3
  max_size              = 15
  desired_capacity      = 6
  vpc_zone_identifier   = [
    aws_subnet.private-ap-east-1a.id,
    aws_subnet.public-ap-east-1b.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.hongkong_tg.arn]

  launch_template {
    id      = aws_launch_template.hongkong_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "hongkong-instance"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "hongkong_scaling_policy" {
  name                   = "hongkong-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.hongkong_asg.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "hongkong_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.hongkong_asg.name
  alb_target_group_arn   = aws_lb_target_group.hongkong_tg.arn
}