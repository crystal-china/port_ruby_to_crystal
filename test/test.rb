File.exist?("ruby")
"hello".respond_to? :size
require_relative "./empty"

arr = {"foo1" => "bar1"}
arr["foo2"] || "bar2"
arr["foo3"] ||= "bar3"
arr["foo1"] && "ok"

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

begin
  raise RuntimeError, "Failed"
rescue
end

require "socket"

Errno::EADDRINUSE
Time.now.strftime("%Y%m%d")
Time.now.strftime('%-Y%m%d')

Dir.chdir("/") { }
Dir.pwd

# Process.kill
# Process.spawn
# Errno::ESRCH
# Errno::ENOENT

pid = fork do
  sleep 0.1
end

pid = fork { sleep 0.1 }

"hello".delete_suffix("lo")
"hello".delete_prefix("he")

$stdin
$stdout.print ""
$stderr.puts ""

nil&.nil?

contexts = {:context_id => "foo", :host => "host", :url => "url"}
contexts[:context_id]&.upcase
contexts&.[](:host) || contexts&.[](:url)

# FileUtils.rm_f

def aaa?
end
alias bbb? aaa?
bbb?

contexts.dig(:context_id)&.downcase
contexts.find {|k, _| k.to_s == "host"}&.first

x = <<~XML
<parent>
  <child />
</parent>
XML

exec("true")
Kernel.exec("true")
