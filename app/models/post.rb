class Post < ApplicationRecord
    validates :content, {presence: true ,length:{maximum:250}}
end
