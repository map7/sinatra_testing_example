require_relative 'test_helper'
require_relative 'bookshelf.rb'

class AddBookshelf < Test::Unit::TestCase
  include Capybara::DSL
  include TestHelper

  def test_adding_bookshelf
    visit "/"
    assert_current_path "/"
    assert page.has_content?("Bookshelves")
    click_on "new_bookshelf"

    # On Add page
    assert_current_path "/add"
    assert page.has_no_content?("Bookshelves")
    assert page.has_content?("Add Bookshelf")

    fill_in "name", with: "Fred"
    fill_in "location", with: "Lounge"
    click_on "submit"

    # Back on the index page
    assert_current_path "/"
    assert page.has_content?("Bookshelves")
    assert page.has_content?("Fred")
    assert page.has_content?("Lounge")
    
  end
end  
