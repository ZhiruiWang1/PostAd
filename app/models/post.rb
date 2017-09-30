class Post < ApplicationRecord
	has_many :comments
    validates :title, presence: true, length: {minimum: 4}
    def self.search(search)
    	
    	where("title LIKE ? OR body LIKE ?","%#{search}%", "%#{search}%")
    	
    	#where("body LIKE ?","%#{search}%")
    end

end
