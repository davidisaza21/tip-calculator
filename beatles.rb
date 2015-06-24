
class Musician
    attr_accessor :name
end

class Beatle< Musician
    attr_accessor :nickname
    def initialize (name, nickname)
    self.name = name #self is used to help assign name to name without the problem of 'name = name'
    self.nickname = nickname 
end
    def greeting
    "Hi, I'm #{name}.  I'm #{nickname}!"
end
end

beatles = [Beatle.new("John Lennon","the smart one"),Beatle.new("Paul McCartney","the cute one"),Beatle.new("Ringo Star","the cute one"),Beatle.new("George Harrison","the quiet one")]
beatles.each do |beatle|
p beatle.greeting
end