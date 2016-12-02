class Poem < ActiveRecord::Base
  # Remember to create a migration!
  validates_presence_of :author, :title, :text

  def pretty_poem
    self.text.split("+")
  end
end
