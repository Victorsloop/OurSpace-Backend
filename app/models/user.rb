class User < ApplicationRecord
    has_many :dillemas, dependent: :destroy
    has_many :notes, dependent: :destroy
end
