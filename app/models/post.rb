class Post < ApplicationRecord

  has_attached_file :image, styles: { large: "600*600", medium: "300*300", thumb: "150*150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  #validates :title, presence: true,
						#length: {minimum: 5}
  belongs_to :user, optional: true
  default_scope -> { order(created_at: :desc) }
	
  #validation rules
  validates :user_id, presence: true
  validates :body, presence: true
	

  has_many :comments
	
  #validation rules
  validates :title, presence: true, length: {minimum: 4}					

	
  #Method for Searching Post records - database lookup
  def self.search(search)
    where("title LIKE ? OR body LIKE ?","%#{search}%", "%#{search}%")
    #where("body LIKE ?","%#{search}%")
  end

end
