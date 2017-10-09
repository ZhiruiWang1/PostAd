class Post < ApplicationRecord
	belongs_to :user, optional: true
	default_scope -> { order(created_at: :desc) }
	validates :user_id, presence: true
	validates :body, presence: true
	

	has_many :comments
    validates :title, presence: true, length: {minimum: 4}
    def self.search(search)
    	
    	where("title LIKE ? OR body LIKE ?","%#{search}%", "%#{search}%")
    	
    	#where("body LIKE ?","%#{search}%")
    end

end
