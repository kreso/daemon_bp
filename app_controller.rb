require "daemons"
require "./app"

pwd = Dir.pwd
Daemons.run_proc("app.rb") do
  Dir.chdir(pwd)
  exec "ruby app.rb"
end
