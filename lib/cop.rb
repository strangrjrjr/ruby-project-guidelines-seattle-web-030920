# Cop class
class Cop

    def initialize(name)
        @name = name
    end

    # TODO ADD MORE NUANCE TO GAME LOGIC INTELLIGENCE? DIFFERING ODDS BY ROUND?
    def catch(drop)
        chance = 1 + rand(10)
        if chance <= 3
            decrypt =  1 + rand(2)
           case decrypt
           when 1
             culprit = CYPHR.descram(drop.sender)
             puts culprit
             puts "Ha! Got them!"
             self.num_caught += 1
           when 2
            puts CYPHR.descram(drop.msg)
            puts "Not another DAD JOKE!!!"
            # tagger points += 1
           end
        else
           puts "No luck, I'll have to try again."
           # tagger points += 2
        end
    end

end