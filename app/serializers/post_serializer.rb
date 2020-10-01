class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :user
  belongs_to :user

  def username
    object.user.name
  end
end
