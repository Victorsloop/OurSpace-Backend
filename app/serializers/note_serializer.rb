class NoteSerializer < ActiveModel::Serializer
  attributes :id,:content, :user_id, :dillema_id
  belongs_to :user
  belongs_to :dillema
end
