class User
  include Mongoid::Document
  store_in collection: "user"
  field :createdAt
  field :updatedAt
  field :username
  field :password
  field :age, type: Integer
  field :address
end
