// aws_rds_cluster
output "this_rds_cluster_arn" {
  description = "The ID of the cluster"
  value       = element(concat(aws_rds_cluster.this.*.arn, list("")), 0)
}

output "this_rds_cluster_id" {
  description = "The ID of the cluster"
  value       = element(concat(aws_rds_cluster.this.*.id, list("")), 0)
}

output "this_rds_cluster_resource_id" {
  description = "The Resource ID of the cluster"
  value       = element(concat(aws_rds_cluster.this.*.cluster_resource_id, list("")), 0)
}

output "this_rds_cluster_endpoint" {
  description = "The cluster endpoint"
  value       = element(concat(aws_rds_cluster.this.*.endpoint, list("")), 0)
}

output "this_rds_cluster_reader_endpoint" {
  description = "The cluster reader endpoint"
  value       = element(concat(aws_rds_cluster.this.*.reader_endpoint, list("")), 0)
}

// database_name is not set on `aws_rds_cluster` resource if it was not specified, so can't be used in output
output "this_rds_cluster_database_name" {
  description = "Name for an automatically created database on cluster creation"
  value       = var.database_name
}

output "this_rds_cluster_master_password" {
  description = "The master password"
  value       = element(concat(aws_rds_cluster.this.*.master_password, list("")), 0)
  sensitive   = true
}

output "this_rds_cluster_port" {
  description = "The port"
  value       = element(concat(aws_rds_cluster.this.*.port, list("")), 0)
}

output "this_rds_cluster_master_username" {
  description = "The master username"
  value       = element(concat(aws_rds_cluster.this.*.master_username, list("")), 0)
}

output "this_rds_cluster_hosted_zone_id" {
  description = "Route53 hosted zone id of the created cluster"
  value       = element(concat(aws_rds_cluster.this.*.hosted_zone_id, list("")), 0)
}

// aws_rds_cluster_instance
output "this_rds_cluster_instance_endpoints" {
  description = "A list of all cluster instance endpoints"
  value       = element(concat(aws_rds_cluster_instance.this.*.endpoint, list("")), 0)
}

output "this_rds_cluster_instance_ids" {
  description = "A list of all cluster instance ids"
  value       = element(concat(aws_rds_cluster_instance.this.*.id, list("")), 0)
}

// aws_security_group
output "this_security_group_id" {
  description = "The security group ID of the cluster"
  value       = local.rds_security_group_id
}

output "this_rds_cluster_secret_arn" {
  description = "The rds secret arn"
  value       = element(concat(aws_secretsmanager_secret_version.db.*.arn, list("")), 0)
}

output "this_rds_cluster_secret_id" {
  description = "The rds secret id"
  value       = element(concat(aws_secretsmanager_secret_version.db.*.id, list("")), 0)
}
