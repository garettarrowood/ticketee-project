class Ticket < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true, length: { minimum: 10 }
  belongs_to :project
  belongs_to :user
<<<<<<< HEAD

  mount_uploader :asset, AssetUploader
  has_many :assets
  accepts_nested_attributes_for :assets
=======
>>>>>>> parent of 6358e57... Add the ability to attach a file to a ticket
end
