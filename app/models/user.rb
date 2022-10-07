class User < ApplicationRecord
has_many :comments
validates_associated :comments
end
