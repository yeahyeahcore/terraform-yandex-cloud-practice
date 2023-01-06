remote_state {
  backend = "s3"

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }

  config = {
    bucket   = "my-bucket"
    key      = "terragrunted/${path_relative_to_include()}.tfstate"
    region   = "eu-west-1"
    encrypt  = false
    endpoint = "http://s3.localhost.localstack.cloud:4566"

    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
    dynamodb_table              = "terraform_state"
    dynamodb_endpoint           = "http://s3.localhost.localstack.cloud:4566"

    skip_bucket_versioning   = true # use only if the object store does not support versioning
    skip_bucket_ssencryption = true # use only if non-encrypted Terraform State is required and/or the object store does not support server-side encryption
    skip_bucket_root_access  = true # use only if the AWS account root user should not have access to the remote state bucket for some reason
    skip_bucket_enforced_tls = true # use only if you need to access the S3 bucket without TLS being enforced
    // enable_lock_table_ssencryption = true # 
  }
}
