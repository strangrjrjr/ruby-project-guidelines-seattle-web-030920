# Destroy DB seeds (?)
# API calls to seed DB
# Create objects to put in db
# Requires input from bin/run.rb for API calls

def clear
    Tagger.delete_all
    Drop.delete_all
    Cop.delete_all
end

def make_taggers(number_of_names)
    names = JSON.parse(RestClient.get("https://uinames.com/api/?amount=#{number_of_names}"))
    name_array = names.map do |person|
        person["name"] + " " + person["surname"]
    end
    name_array.each do |tagger|
        Tagger.create(name: tagger)
    end
end

def make_cops(num_cops)
    names = JSON.parse(RestClient.get("https://uinames.com/api/?amount=#{num_cops}"))
    name_array = names.map do |person|
        person["name"] + " " + person["surname"]
    end
    name_array.each do |cop|
        Cop.create(name: cop)
    end
end