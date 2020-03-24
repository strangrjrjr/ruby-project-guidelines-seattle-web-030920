# Cop class
class Cop < ActiveRecord::Base
    has_many :taggers, through: :drops

end