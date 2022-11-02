File.exist?("ruby")
"hello".respond_to? :size
require_relative "./empty"

arr = {"foo1" => "bar1"}
arr["foo2"] || "bar2"
arr["foo3"] ||= "bar3"

["hello", "world"].include? "hello"

class Test
  attr_accessor :test1
  attr_reader :test2
  attr_writer :test3
end

__dir__

["a", "b"].map(&:upcase)
["a", "b"].map &:upcase
["a", "b"].map &:empty?

"hello".end_with? "lo"
"hello".start_with? "he"

File.readlines("./test/test.rb")

require 'fileutils'
require "fileutils"

File.mtime("./test/test.rb")

Process.getpgid(Process.pid)
