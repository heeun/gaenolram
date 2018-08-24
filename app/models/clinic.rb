class Clinic < ActiveRecord::Base
    mount_uploader :image
    belongs_to :user
    has_many :like4s
    has_many :comments
    has_many :l_users, through: :like4s, source: :user
    
    searchable do
        text :title
        text :content
    end
end
