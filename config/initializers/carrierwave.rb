CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = "fg-knowledge"
  config.aws_credentials = {
    access_key_id:     Rails.application.credentials.aws[:access_key_id],
    secret_access_key: Rails.application.credentials.aws[:secret_access_key],
    region:            "eu-west-1"
  }
end