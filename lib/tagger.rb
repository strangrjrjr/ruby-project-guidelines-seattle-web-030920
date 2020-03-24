# Tagger class
class Tagger < ActiveRecord::Base
    has_many :drops
    has_many :taggers, through: :drops

    def get_message
        msg = RestClient.get('https://icanhazdadjoke.com/', {accept: :text})
        CYPHR.scram(msg.body.to_s.encode('UTF-8', invalid: :replace, undef: :replace, replace: '?'))
    end

    def get_target
        Tagger.all.sample
    end

    def drop
        message = get_message
        target = get_target
        Drop.create(sender: CYPHR.scram(self.name), receiver: CYPHR.scram(target.name), msg: message, tagger_id: self.id)
        
    end

end