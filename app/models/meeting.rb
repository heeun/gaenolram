class Meeting < ActiveRecord::Base
    belongs_to :user
    has_many :like3s
    has_many :l_users, through: :like3s, source: :user
    mount_uploader :image  
    
    searchable do
        text :title
        text :content
    end
end
