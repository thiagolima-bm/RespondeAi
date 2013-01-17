Paperclip::Attachment.default_options.merge!({
  :storage => :s3,
  :s3_credentials => {
    bucket: ENV['AMAZON_S3_BUCKET'],
    access_key_id: ENV['AMAZON_ACCESS_KEY_ID'],
    secret_access_key: ENV['AMAZON_SECRET_ACCESS_KEY']
  },
 :url => ":s3_domain_url"
})