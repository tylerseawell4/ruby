class Human
  def initialize(name, birth_place)
    @name, @birth_place = name, birth_place
  end
  def name
   @name
  end
  def birth_place
    @birth_place
  end
  def invite
    address #calling a protected method that is below
  end
  def loudmouth
    social_security #calling a private method that is below
  end
protected #a method, dont need an 'end' statement
  def address
    '310 S Harrington'
  end
private #a method, dont need an 'end' statement
  def social_security
    @num = 12345
  end
end

Wal = Human.new('Walid', 'The Bronx')
puts Wal.name
puts Wal.birth_place
puts Wal.invite
# puts Wal.address
puts Wal.loudmouth
puts Wal.social_security