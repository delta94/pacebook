# == Schema Information
#
# Table name: comments
#
#  id                :bigint           not null, primary key
#  body              :text             not null
#  parent_comment_id :integer
#  user_id           :integer          not null
#  post_id           :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Comment < ApplicationRecord
    validates :parent_comment_id, :user_id, :post_id, presence: true

    belongs_to :comment,
        foreign_key: :parent_comment_id,
        class_name: :Comment
 
    belongs_to :user,
        foreign_key: :user_id,
        class_name: :User

    belongs_to :post,
        foreign_key: :post_id,
        class_name: :Post

    has_many :comments,
        foreign_key: :parent_comment_id,
        class_name: :Comment,
        dependent: :destroy

    has_many :likes, 
        as: :likeable,
        dependent: :destroy
end
