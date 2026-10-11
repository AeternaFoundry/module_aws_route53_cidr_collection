output "route53_cidr_collections_id" {
  description = "Map of id values across all route53_cidr_collections, keyed the same as var.route53_cidr_collections"
  value       = { for k, v in aws_route53_cidr_collection.route53_cidr_collections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53_cidr_collections_arn" {
  description = "Map of arn values across all route53_cidr_collections, keyed the same as var.route53_cidr_collections"
  value       = { for k, v in aws_route53_cidr_collection.route53_cidr_collections : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "route53_cidr_collections_name" {
  description = "Map of name values across all route53_cidr_collections, keyed the same as var.route53_cidr_collections"
  value       = { for k, v in aws_route53_cidr_collection.route53_cidr_collections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "route53_cidr_collections_version" {
  description = "Map of version values across all route53_cidr_collections, keyed the same as var.route53_cidr_collections"
  value       = { for k, v in aws_route53_cidr_collection.route53_cidr_collections : k => v.version if v.version != null }
}

