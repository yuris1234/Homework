# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    before_validation :ensure_session_token

    validates :username, :session_token, presence: true, uniqueness: true
    validates :password_digest, presence: {message: 'Password missing'}
    validates :password, length: {minimum: 6, allow_nil: true} 

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        if user 
            return use if user.is_password?(password)
        else
            return nil
        end
    end

    def generate_unique_session_token

    end

    def password=(arg)
    
    end

    def is_password?(arg)
        
    end

    def reset_session_token!

    end

    def ensure_session_token

    end


end
