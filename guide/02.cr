file = File.new("path/to/file")
content = file.gets_to_end
file.close

# Implicit close with `open` and a block:
content = File.open("path/to/file") do |file|
  file.gets_to_end
end

# Shortcut of the above:
content = File.read("path/to/file")

# Write to a file by opening with a "write mode" specified.
File.open("path/to/file", "w") do |file|
  file.print "hello"
end
# Content of file on disk will now be "hello".

# Shortcut of the above:
File.write("path/to/file", "hello")