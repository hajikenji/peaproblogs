class User < ApplicationRecord
    before_validation { email.downcase! }
    validates :name, presence: true, length: { maximum: 20 }
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                      uniqueness: true
    validates :password_digest, length: { minimum: 4 }
    has_secure_password
end
