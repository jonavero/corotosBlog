class Post < ApplicationRecord
  belongs_to :category
  belongs_to :label
end
