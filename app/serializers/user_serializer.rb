class UserSerializer < ActiveModel::Serializer
  attributes :id,:name,:pronoun,:username
  has_many :dillemas
end
