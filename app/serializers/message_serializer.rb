class MessageSerializer < ActiveModel::Serializer
  attributes :id, :number, :text, :inbound
end
