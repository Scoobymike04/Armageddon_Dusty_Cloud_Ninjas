resource "aws_autoscaling_group" "tokyo" {
  provider         = aws.Tokyo
  name_prefix      = "tokyo"
  min_size         = 3
  max_size         = 6
  desired_capacity = 3
  vpc_zone_identifier = [
    aws_subnet.private-ap-northeast-1a.id,
    aws_subnet.private-ap-northeast-1c.id
  ]
  health_check_type = "ELB"
  force_delete      = true
  target_group_arns = [aws_lb_target_group.Tokyo-TG-80.arn]

  launch_template {
    id      = aws_launch_template.launch_tokyo.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  initial_lifecycle_hook {
    name              = "launch_tokyo"
    default_result    = "CONTINUE"
    heartbeat_timeout = 120
    notification_metadata = jsonencode({
      foo = "bar"
    })
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING"
  }
  initial_lifecycle_hook {
    name                 = "terminate_tokyo"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 120
    lifecycle_transition = "autoscaling:EC2_INSTANCE_TERMINATING"
  }
}
resource "aws_autoscaling_policy" "Tokyo-Scaling-Policy" {
  provider               = aws.Tokyo
  name                   = "Tokyo-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.tokyo.name

  policy_type               = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 40.0
  }
}
resource "aws_autoscaling_group" "new_york" {
  provider         = aws.New-York
  name_prefix      = "new_york"
  min_size         = 3
  max_size         = 6
  desired_capacity = 3
  vpc_zone_identifier = [
    aws_subnet.private-us-east-1a.id,
    aws_subnet.private-us-east-1b.id
  ]
  health_check_type = "ELB"
  force_delete      = true
  target_group_arns = [aws_lb_target_group.New-York-TG-80.arn]

  launch_template {
    id      = aws_launch_template.launch_new-york.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]
  initial_lifecycle_hook {
    name              = "launch_new-york"
    default_result    = "CONTINUE"
    heartbeat_timeout = 120
    notification_metadata = jsonencode({
      foo = "bar"
    })
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING"
  }
  initial_lifecycle_hook {
    name                 = "terminate_new-york"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 120
    lifecycle_transition = "autoscaling:EC2_INSTANCE_TERMINATING"
  }

}

resource "aws_autoscaling_policy" "New-York-Scaling-Policy" {
  provider               = aws.New-York
  name                   = "New-York-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.new_york.name

  policy_type               = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 40.0
  }
}

resource "aws_autoscaling_group" "london" {
  provider         = aws.London
  name             = "london"
  min_size         = 3
  max_size         = 6
  desired_capacity = 3
  vpc_zone_identifier = [
    aws_subnet.private-eu-west-2a.id,
    aws_subnet.private-eu-west-2b.id
  ]
  health_check_type = "ELB"
  force_delete      = true
  target_group_arns = [aws_lb_target_group.London-TG-80.arn]

  launch_template {
    id      = aws_launch_template.launch_london.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # launching instance
  initial_lifecycle_hook {
    name                 = "launch_london"
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 120
    notification_metadata = jsonencode({
      foo = "bar"
    })
  }

  initial_lifecycle_hook {
    name                 = "terminate_london"
    lifecycle_transition = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 120
  }
}


resource "aws_autoscaling_policy" "London-Scaling-Policy" {
  provider               = aws.London
  name                   = "London-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.london.name

  policy_type               = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 40.0
  }
}

resource "aws_autoscaling_group" "sao_paulo" {
  provider         = aws.Sao-Paulo
  name             = "sao_paulo"
  min_size         = 3
  max_size         = 6
  desired_capacity = 3
  vpc_zone_identifier = [
    aws_subnet.private-sa-east-1a.id,
    aws_subnet.private-sa-east-1c.id
  ]
  health_check_type = "ELB"
  force_delete      = true
  target_group_arns = [aws_lb_target_group.Sao-Paulo-TG-80.arn]

  # launch instance
  initial_lifecycle_hook {
    name              = "launch_sao-paulo"
    default_result    = "CONTINUE"
    heartbeat_timeout = 120
    notification_metadata = jsonencode({
      foo = "bar"
    })
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING"
  }

  launch_template {
    id      = aws_launch_template.launch_sao-paulo.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]
  # terminate instance 
  initial_lifecycle_hook {
    name                 = "term_sao-paulo"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 120
    lifecycle_transition = "autoscaling:EC2_INSTANCE_TERMINATING"
  }
}
resource "aws_autoscaling_policy" "Sao-Paulo-Scaling-Policy" {
  provider               = aws.Sao-Paulo
  name                   = "Sao-Paulo"
  autoscaling_group_name = aws_autoscaling_group.sao_paulo.name

  policy_type               = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 40.0
  }
}
resource "aws_autoscaling_group" "australia" {
  provider         = aws.Australia
  name             = "australia"
  min_size         = 3
  max_size         = 6
  desired_capacity = 3
  vpc_zone_identifier = [
    aws_subnet.private-ap-southeast-2a.id,
    aws_subnet.private-ap-southeast-2b.id
  ]
  health_check_type = "ELB"
  force_delete      = true
  target_group_arns = [aws_lb_target_group.Australia-TG-80.arn]

  launch_template {
    id      = aws_launch_template.launch_australia.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]
  initial_lifecycle_hook {
    name                 = "launch_australia"
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 120
    notification_metadata = jsonencode({
      foo = "bar"
    })
  }
  initial_lifecycle_hook {
    name                 = "terminate_australia"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 120
    lifecycle_transition = "autoscaling:EC2_INSTANCE_TERMINATING"
  }
}
resource "aws_autoscaling_policy" "Australia-Scaling-Policy" {
  provider               = aws.Australia
  name                   = "Australia-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.australia.name

  policy_type               = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 40.0
  }
}


resource "aws_autoscaling_group" "hong-kong" {
  provider         = aws.Hong-Kong
  name_prefix      = "hong-kong"
  min_size         = 3
  max_size         = 6
  desired_capacity = 3
  vpc_zone_identifier = [
    aws_subnet.private-ap-east-1a.id,
    aws_subnet.private-ap-east-1b.id
  ]
  health_check_type         = "ELB"
  health_check_grace_period = 300
  force_delete              = true
  target_group_arns         = [aws_lb_target_group.Hong-Kong-TG-80.arn]

  launch_template {
    id      = aws_launch_template.launch_hong-kong.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  initial_lifecycle_hook {
    name                 = "instance-protection-launch"
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 60
    notification_metadata = jsonencode({
      foo = "bar"
    })
  }

  initial_lifecycle_hook {
    name                 = "scale-in-protection"
    lifecycle_transition = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 300
  }
}
resource "aws_autoscaling_policy" "Hong-Kong-Scaling-Policy" {
  provider               = aws.Hong-Kong
  name                   = "Hong-Kong-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.hong-kong.name

  policy_type               = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
resource "aws_autoscaling_group" "california" {
  provider         = aws.California
  name             = "california"
  min_size         = 3
  max_size         = 6
  desired_capacity = 3
  vpc_zone_identifier = [
    aws_subnet.private-us-west-1c.id,
    aws_subnet.private-us-west-1b.id
  ]
  health_check_type = "ELB"
  force_delete      = true
  target_group_arns = [aws_lb_target_group.California-TG-80.arn]

  launch_template {
    id      = aws_launch_template.launch_california.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]
  initial_lifecycle_hook {
    name              = "launch_california"
    default_result    = "CONTINUE"
    heartbeat_timeout = 120
    notification_metadata = jsonencode({
      foo = "bar"
    })
    lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING"
  }
  initial_lifecycle_hook {
    name                 = "terminate_california"
    default_result       = "CONTINUE"
    heartbeat_timeout    = 120
    lifecycle_transition = "autoscaling:EC2_INSTANCE_TERMINATING"
  }
}
resource "aws_autoscaling_policy" "California-Scaling-Policy" {
  provider               = aws.California
  name                   = "California-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.california.name

  policy_type               = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 40.0
  }
}





