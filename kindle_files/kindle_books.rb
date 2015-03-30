dir = Dir.new("/Users/rene/Library/Containers/com.amazon.Kindle/Data/Library/Application Support/Kindle/My Kindle Content")


# puts dir.methods
puts dir.sort { |a, b| a <=> b }