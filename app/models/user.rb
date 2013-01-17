class User < ActiveRecord::Base
  attr_accessible :admin, :email, :image_url, :name, :oauth_expires_at, :oauth_token, :provider, :uid
  has_many :solution_steps

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email unless user.email
      user.image_url = auth.info.image
      user.admin = false
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

end
