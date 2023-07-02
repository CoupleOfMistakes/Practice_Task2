require_relative "validation"

class Person
  include Validation
  attr_accessor :name, :id, :birth_date

  def initialize(full_name, id, birth_date)
    @name = full_name
    @id = id
    @birth_date = birth_date
  end

  def set_name(full_name)
    puts ("Setting a new name...")
    @name = full_name
  end

  def set_id(id)
    puts ("Setting a new id...")
    @id = id
  end

  def set_birthDate(birth_date)
    puts ("Setting a new date...")
    @birth_date = birth_date
  end

  def info
    puts ("All the info about the person:\nFull name: #{name}\nid: #{id}\nBirth date: #{birth_date}\n")
  end

  def validation
    puts ("isName: #{Validation.valid_name?(name)}\nisID: #{Validation.valid_inn?(id)}\nisBirthDate: #{Validation.after_date?(birth_date)}")
    puts ("Validation passed: #{Validation.valid_name?(name) && Validation.valid_inn?(id) && Validation.after_date?(birth_date)}\n\n")
  end
end

person_1 = Person.new("Name Ex", "id32423422356", Date.parse("2000-01-01"))
person_1.info
person_1.validation
person_2 = Person.new("2424", "kinda of id", Date.parse("2023-08-02"))
person_2.info
person_2.validation
person_3 = Person.new("2424", "id234234", Date.parse("2023-03-02"))
person_3.info
person_3.validation

person_3.set_name("Anna Kert")
person_3.info
person_3.validation

sleep(1000)
