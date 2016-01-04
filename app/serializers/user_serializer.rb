class UserSerializer < ActiveModel::Serializer
  attributes  :username, :password, :age, :address, :createdAt, :updatedAt, :id
  def id
    object.id.to_s
  end
end
