File.exists?("ruby")
"hello".responds_to? :size
require "./empty"

arr = {"foo1" => "bar1"}
arr["foo2"]? || "bar2"
arr["foo3"] ||= "bar3"
arr["foo1"]? && "ok"

["hello", "world"].includes? "hello"

class Test
  property :test1
  getter :test2
  setter :test3
end

__DIR__

["a", "b"].map(&.upcase)
["a", "b"].map &.upcase
["a", "b"].map &.empty?

"hello".ends_with? "lo"
"hello".starts_with? "he"

File.read_lines("./test/test.rb")
require "file_utils"
require "file_utils"

File.info("./test/test.rb").modification_time

Process.pgid(Process.pid)

begin
  raise RuntimeError.new "Failed"
rescue
end

require "socket"

Socket::BindError
Time.local.to_s("%Y%m%d")
Time.local.to_s("%-Y%m%d")

Dir.cd("/") { }
Dir.current

# Process.signal
# Process.new
# RuntimeError
# RuntimeError
 ::Process.exec("true")
::Process.exec("true")

pid = ::Process.fork do
  sleep 0.1
end

pid = ::Process.fork { sleep 0.1 }

"hello".rstrip("lo")
"hello".lstrip("he")

STDIN
STDOUT.print ""
STDERR.puts ""

nil.try &.nil?
