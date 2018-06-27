class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    # Esto es una aberración y debe ser refactorizado!
    hash = {_0: '-----',_1: '.----', _2: '..---', _3: '...--', _4: '....-', _5: '.....', _6: '-....', _7: '--...', _8: '---..', _9: '----.'}
    key = '_' + number.to_s
     hash[key.to_sym]
  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(3)
print m.to_morse