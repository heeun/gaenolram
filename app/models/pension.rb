class Pension < ActiveRecord::Base
    belongs_to :user
    has_many :comments
    has_many :likes
    has_many :l_users, through: :likes, source: :user
    mount_uploader :image
    
    searchable do
        text :title
        text :content
    end
end
