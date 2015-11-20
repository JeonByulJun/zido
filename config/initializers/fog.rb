CarrierWave.configure do |config|
                     # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIV3KVS7BLECPBPAQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'             # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'markerimage'                          # required

end