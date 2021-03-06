class UserSerializer < ActiveModel::Serializer
  cache key: "user", expires_in: 3.hours
  attributes  :username, :password, :age, :address, :createdAt, :updatedAt, :id
  def id
    object.id.to_s
  end
end
