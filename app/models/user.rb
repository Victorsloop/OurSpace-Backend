class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :dillemas, dependent: :destroy
    has_many :notes, dependent: :destroy
end
