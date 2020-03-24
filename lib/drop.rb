# Drop class
class Drop < ActiveRecord::Base
    has_many :taggers
    belongs_to :tagger

end