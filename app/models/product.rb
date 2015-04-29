class Product < ActiveRecord::Base
	 mount_uploader :image, ImageUploader
	 validates_presence_of :title, :message => "Debe ingresar título"
	 validates_presence_of :description, :message => "Debe ingresar descripción"
	 validates_presence_of :image, :message => "Debe ingresar imagen"
  belongs_to :user
end
