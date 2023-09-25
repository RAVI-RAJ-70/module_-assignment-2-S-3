module "server01" {
    source = "../module_loop/ec2"
    for_each = var.Name
    Name = each.value
    ami = each.value.ami
    instance_type = each.value.instance_type
    subnet_id = each.value.subnet_id

    ec2_tags = merge(var.ec2_tags, {name = each.key})
    ec2_volume_tags = merge(var.ec2_volume_tags, {name = each.key})
}

module "bucket01" {
  source = "../module_loop/s3"
  count = length(var.bucket_name)
  bucket_name =  var.bucket_name[count.index]
  s3_tags = merge(var.s3_tags, {name = var.bucket_name[count.index]})
}

