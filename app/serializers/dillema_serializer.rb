class DillemaSerializer < ActiveModel::Serializer
  attributes :id,:title,:content,:date,:tags,:sentiment,:emotion
end
