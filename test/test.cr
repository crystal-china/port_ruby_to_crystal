File.exists?("ruby")
"hello".responds_to? :size
require "./empty"

arr = {"foo1" => "bar1"}
arr["foo2"]? || "bar2"
arr["foo3"] ||= "bar3"
arr["foo1"]? && "ok"
arr.key_for("bar1")

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
require "random/secure"

File.info("./test/test.rb").modification_time

Process.pgid(Process.pid)

begin
  raise RuntimeError.new "Failed"
rescue e
end

begin
  raise RuntimeError.new
rescue
end

begin
  # should keep no changes
  raise RuntimeError.new
rescue
end

require "socket"

Socket::BindError
Time.local.to_s("%Y%m%d")
Time.local.to_s("%-Y%m%d")
Time.monotonic

Dir.cd("/") { }
Dir.current

# Process.signal
# Process.new
# RuntimeError
# RuntimeError

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

contexts = {:context_id => "foo", :host => "host", :url => "url"}
contexts[:context_id].try &.upcase
contexts.try &.[](:host) || contexts.try &.[](:url)

contexts.to_h.reject(:host, :url)
contexts.to_h.select(:host, :url)

# FileUtils.rm_rf

def aaa?
end
def bbb?; aaa?; end
bbb?

contexts.dig(:context_id).try &.downcase
contexts.find {|k, _| k.to_s == "host"}.try &.first

file = File.tempfile("htpasswd")

module M
  extend self
end

Base64.encode("hello world")
Base64.strict_encode("hello world")
Base64.urlsafe_encode("hello world")
Base64.decode("aGVsbG8gd29ybGQ=\n")
Base64.decode_string("aGVsbG8gd29ybGQ=")
Base64.decode_string("aGVsbG8gd29ybGQ=")

Time.parse_local("2000-10-31", "%Y-%m-%d")

ENV.has_key?("CHROME_PATH")

File.expand_path("~zw963/utils/bin")

url = URI.parse("https://www.baidu.com")
HTTP::Client.get(url).body
[ "/search", "?q=crystal"].reduce(URI.parse("https://www.google.com/")) { |a, e| a.resolve(e) }

x = <<-XML
<parent>
  <child />
</parent>
XML

 ::Process.exec("true")
::Process.exec("true")
