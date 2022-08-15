require 'pry'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramble'

class Song
  attr_accessor :name
  attr_reader :artist

  extend ::Memorable
  include ::Paramble
  extend ::Findable

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def artist=(artist)
    @artist = artist
  end
end
