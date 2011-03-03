class Product < ActiveRecord::Base

	belongs_to :inventorys

	validates_presence_of  :title, :descripcion, :price, :image_url,:message => "Falta el ingreso de algun campo"
	validates_numericality_of :price,:message => "El precio debe ser un numero"
	validates_numericality_of :price, :greater_than => 0.1, :message => "El precio debe ser mayor que 0.01"
	validates_uniqueness_of :title, :message => "El titulo debe de ser unico"
	validates_format_of :image_url, :with => /\A((?:[-a-z0-9]+\.)+[gif|jpg|png]{3,})\Z/i ,:message  => "Formato no valido"
	validates_numericality_of :projection, :greater_than => 0,:message => "Proyection > 0"


end
