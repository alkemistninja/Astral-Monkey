if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider:              'AWS'
      aws_access_key_id:     ENV[""]
      aws_secret_key_id:     ENV[""]
    }
    config.fog_directory = ENV["S3_BUCKET"]
  end
end
