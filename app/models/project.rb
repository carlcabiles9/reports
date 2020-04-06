class Project < ApplicationRecord
  searchable do
    text :name
    time :created_at
  end
  belongs_to :user
end
