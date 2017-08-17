require "./cat.rb"# Write a Human class
#
# A human is initialized with its name.
# A human can own multiple cats.
# A human can adopt another new cat at any time.
# A human can feed, entertain, and pet all of its cats at the same time.
# A human is considered crazy if it owns more than some large number of cats (you decide how many)

class Human

  attr_reader :name, :how_many_cats, :crazy, :cats_owned

  def initialize(name)
    @name          = name
    @how_many_cats = 0
    @cats_owned     = []
    @crazy         = false
  end

  def adopt(cat)
    cat.adopt
    @how_many_cats += 1
    @cats_owned << cat
    @crazy = true if @how_many_cats > 10
  end

  def feed_all
    @cats_owned.each do |each_cat|
      each_cat.feed
    end
  end

  def entertain_all
    @cats_owned.each do |each_cat|
      each_cat.entertain
    end
  end

  def rest_all
    @cats_owned.each do |each_cat|
      each_cat.rest
    end
  end

  def play_all
    @cats_owned.each do |each_cat|
      each_cat.play
    end
  end

  def pet_all
    @cats_owned.each do |each_cat|
      each_cat.pet
    end
  end
end
