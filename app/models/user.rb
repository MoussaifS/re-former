class User < ApplicationRecord
    validates :name , presence: true , length: {minimum:3, maximum:10 } , uniqueness: true
    validates :email , presence: true  , exclusion: { in/within: %w(@), message: "%{value} if fails" }
    validates :password , presence: true , length: {minimum:3, maximum:10 } , uniqueness: true 
end
