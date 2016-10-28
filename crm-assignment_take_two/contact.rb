# require 'pry'

  class Contact

  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :note

  @@contacts = []
  @@id = 1
  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email     = email
    @note      = note
    @id        = @@id
    @@id += 1
end
  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contacts.each do |contact|
      if contact.id == id.to_i
        return contact
      end
    end
    return "not found"
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(attr_name, value)
    attr_name = attr_name.to_sym
      case attr_name
      when :first_name
        self.first_name = value
      when :last_name
        self.last_name = value
      when :email
        self.email = value
      when :note
        self.note = value
        # binding.pry
      else
        "whoops."
    end
  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Stan' should return the first contact named Stan

  def self.find_by(attr_name, value)
    attr_name = attr_name.to_sym
      @@contacts.each do |contact| #for each contact, do the following
        if attr_name == :first_name #if the argument :key is equal to the :first_name ke
          #return a contact with the first name
          return contact if contact.first_name == value
        elsif attr_name == :last_name
          return contact if contact.last_name == value
        elsif attr_name == :email
          return contact if contact.email == value
        else attr_name == :note
          return contact if contact.note == value
      end
    end
  end

  # This method should delete all of the contacts
  def self.delete_all
    @@Contacts = []
  end

  def full_name
    return "#{first_name} #{last_name}"
  end

  # This method should delete the contact
  def delete_contact
    @@contacts.delete(self)
  # HINT: Check the Array class docs for built-in methods that might be useful here
  end

  # Feel free to add other methods here, if you need them.

end

  # kyle = Contact.create("Kyle", "Brovslofski", "d@g.com", "Bool")
# stan = Contact.new("Stan", "Marsh", "Stan@marsh.com", "Everything's shit!")
# # eric = Contact.create("Eric", "Cartman")
# # kenny = Contact.create("Kenny", "McKormac")
