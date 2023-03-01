class User <  ActiveRecord::Base
    validates :name , presence: true , length: {minimum:3, maximum:10 } , uniqueness: true
    validates :email , presence: true 
    validates :password , presence: true , length: {minimum:3, maximum:10 } , uniqueness: true 
end
