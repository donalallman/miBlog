class Articulo < ApplicationRecord
  belongs_to :autor, optional: true
  
validates :titulo, presence: {:message => "no puede esar vacío"}
validates :contenido, presence: {:message => "no puede esar vacío"}, length: {minimum: 50, :message => "es demasiado corto, mínimo 50 caracteres"}

  
end
