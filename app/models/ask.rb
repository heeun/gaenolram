class Ask < ActiveRecord::Base
    searchable do
        string :title, :default_boost
        text :content
    end
end
