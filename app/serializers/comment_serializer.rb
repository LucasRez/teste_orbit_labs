class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :event_id, :text

  def text
    object.comment_text
  end
end
