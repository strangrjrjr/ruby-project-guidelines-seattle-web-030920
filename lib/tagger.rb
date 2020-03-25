# Tagger class
class Tagger

    def initialize(name)
        @name = name
    end

    def get_dad_joke
        msg = RestClient.get('https://icanhazdadjoke.com/', {accept: :text})
        CYPHR.scram(msg.body.to_s.encode('UTF-8', invalid: :replace, undef: :replace, replace: '?'))
    end

    def create_message
        puts "Want to come up with your own tag?"
        # prompt for yes or no
        # if yes
        puts "Spray away!"
        message = gets.chomp
        message
        # else
        # get_dad_joke
    end

    # CYPHR HAPPENS HERE
    def drop
        # create_message
        # CYPHR.scram(msg)
        # puts CYPHR.scram(msg)
    end

end