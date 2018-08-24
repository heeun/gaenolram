class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :pension
  
end
