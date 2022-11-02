File.exist?("ruby")
"hello".respond_to? :size
require_relative "./empty"

arr = {"world" => 100}
arr["hello"] || "world"

["hello", "world"].include? "hello"

class Test
  attr_accessor :test1
  attr_reader :test2
  attr_writer :test3
end

__dir__

["a", "b"].map(&:upcase)
["a", "b"].map &:upcase

"hello".end_with? "lo"
"hello".start_with? "he"

File.readlines("./test/test.rb")

require 'fileutils'
require "fileutils"
