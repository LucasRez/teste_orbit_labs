class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :reports

  validates :comment_text, presence: true

  def self.filter_by_params(params)
    scoped = where(nil)
    scoped = scoped.where(user_id: params[:user_id]) if params[:user_id]
    scoped = scoped.where(event_id: params[:event_id]) if params [:event_id]
    unless params[:show_reported] &&
           (params[:show_reported] == 'true' || params[:show_reported] == 1)
      scoped = scoped.joins('LEFT JOIN reports ON reports.comment_id = comments.id')
                     .where('reports.comment_id IS NULL')
    end

    scoped
  end

  def text
    read_attribute :comment_text
  end

  def text=(val)
    write_attribute :comment_text, val
  end
end
