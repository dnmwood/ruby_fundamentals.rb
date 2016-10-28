require_relative 'contact'

class CRM < Contact

  def initialize(name)
    @crm_name = name
  end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts 'Welcome to your contact list!'
    sleep(0.5)

    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
    user_selected = gets.chomp.to_i
    call_option(user_selected)
  end

  def call_option(user_selected)
    case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      when 3 then delete_contact
      when 4 then display_all_contacts
      when 5 then search_by_attribute
      when 6 then abort "Have a nice day!"
    end
  end

  def add_new_contact
    print 'Enter first name:'
    first_name = gets.chomp

    print 'Enter last name:'
    last_name = gets.chomp

    print 'Enter email address:'
    email = gets.chomp

    print 'Enter contact notes:'
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
    print "Added: #{first_name} #{last_name} - #{email} '#{note}'"
    print_main_menu
  end

  def modify_existing_contact
    puts "Which contact would you like to modify? Select id#:"
    user_selected = gets.chomp.to_i
    call_option(user_selected)
  end

  def delete_contact
    print 'Which contact would you like to delete?'
      user_selected = gets.chomp
      user_selected.delete_contact
  end

  # This method should accept as an argument an array of contacts
  # and display each contact in that array

  def display_contacts
    @@contacts.each do |list|
      print list
      sleep(1)
      print_main_menu
    end
    # HINT: Make use of this method in the display_all_contacts and search_by_attribute methods to keep your code DRY
  end

  def display_all_contacts

    # HINT: Make use of the display_contacts method to keep your code DRY
  end

  def search_by_attribute

    # HINT: Make use of the display_contacts method to keep your code DRY
  end

  # Add other methods here, if you need them.

end

crm_new = CRM.new("First CRM")
crm_new.print_main_menu
