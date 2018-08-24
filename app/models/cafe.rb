class Cafe < ActiveRecord::Base
    belongs_to :user
    has_many :comments
    has_many :like2s
    has_many :l_users, through: :like2s, source: :user
    mount_uploader :image  
    
    searchable do
        text :title
        text :content
    end
end
