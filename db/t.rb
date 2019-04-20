require 'csv'

text=File.open('test.csv').read
text.gsub!(/\r\n?/, "\n")
text.each_line do |line|
  r = CSV.parse(line)
  content = r[0][1]
  speaker = r[0][2]
  sequence = r[0][4]
end

