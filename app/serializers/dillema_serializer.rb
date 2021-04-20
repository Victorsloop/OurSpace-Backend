class DillemaSerializer < ActiveModel::Serializer
  attributes :id,:title,:content,:date,:tags,:sentiment,:emotion
  belongs_to :user
  has_many :notes
end
