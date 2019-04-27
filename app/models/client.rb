class Client < ApplicationRecord
  has_many :projects
  has_many :programmers, through: :projects
end
