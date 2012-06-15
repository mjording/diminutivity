require 'csv'
require 'pathname'

module Diminutivity
  VERSION = "0.0.17"
  NAMEFILE = "lib/names1.1.csv"
  class Matcher
    attr_accessor :names,:namefile

    def initialize(namefile=NAMEFILE)
      self.names = {}
      self.namefile = namefile
      CSV.read(Pathname.new(__FILE__).parent.join("../#{namefile}")).each do |row|
        row.each do |name|
          names[name] ||= []
          names[name] += row - [name]
        end
      end
      names.keys.each { |name| names[name] = names[name].uniq }
    end

    def match(name,source_name)
      diminutives = names[name]
      return false unless diminutives
      diminutives.include? source_name
    end
  end
end
