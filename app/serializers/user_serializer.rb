class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :image
  has_many :posts
end
