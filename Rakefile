# The rakefile below is simply to demonstrate some examples of what type of
# rake commands work in the REPL. See the README.md file for demonstration.

desc "ENV variables should not be persisted between commands"
task "env:is:reset" do
  puts "ENV['STEP']: #{ENV["STEP"] || 0}"
end

desc "Task with parameters"
task :coordinates, :x, :y do |t, args|
  puts "Draw pixel at [#{args[:x]},#{args[:y]}]"
end
