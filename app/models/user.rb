class User < ApplicationRecord
   has_many :identities

   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :omniauthable, omniauth_providers: %i[facebook]

  def facebook
    identities.where( :provider => "facebook" ).first
  end

  def facebook_client
    @facebook_client ||= Facebook.client( access_token: facebook.accesstoken )
  end

end
