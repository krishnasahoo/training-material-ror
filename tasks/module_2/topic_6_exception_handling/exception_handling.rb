def read_file_content(file_path)
  begin
    File.read(file_path)
  rescue Errno::ENOENT
    "Error: File '#{file_path}' was not found."
  ensure
    puts "File check complete."
  end
end

puts read_file_content("missing_data.txt")

