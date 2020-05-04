CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['SECRET_ACCESS_KEY'],
    region: 'us-east-1' 
  }

    case Rails.env
    when 'production'
        config.fog_directory  = 'chat-space02'
        config.asset_host = 'https://s3.amazonaws.com/chat-space02'
    end
end