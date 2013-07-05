module Gitkeeper
  class User
    include Mongoid::Document
    field :provider, type: String
    field :uid, type: String
    field :name, type: String
    field :email, type: String
    field :nickname, type: String

  
    def self.create_with_omniauth(auth)
      create! do |user|
        Rails.logger.info "\r\n" + "#{Time.now} " + "User.create_with_omniauth(auth) = #{auth}" + "\r\n"
        user.provider = auth["provider"]
        user.uid = auth["uid"]
        user.name = auth["info"]["name"]
        user.email = auth["info"]["email"]
        user.nickname = auth['info']['nickname']
        # user.token = auth['credentials']['token']
        # user.secret = auth['credentials']['secret']

        # extra, eventually
        # user.raw_info = auth['extra']['raw_info']
      end
    end
  end
end
