class Persona < ApplicationRecord
  has_and_belongs_to_many :proyectos
  
end
