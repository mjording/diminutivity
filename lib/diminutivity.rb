require 'csv'
require 'pathname'

module Diminutivity
  VERSION = "0.0.12"
  NAMEFILE = "lib/names1.1.csv"
  class Matcher
    attr_accessor :names,:namefile

    def initialize(namefile=NAMEFILE)
      self.names = {}
      self.namefile = namefile
      CSV.read(Pathname.new(__FILE__).parent.join("../#{namefile}")).each do |row|
        row.each do |name|
          names[name] = row - [name]
        end
      end
    end

    def match(name,source_name)
      names[name].include? source_name
    end
  end
end
