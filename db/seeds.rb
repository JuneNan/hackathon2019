require 'csv'

text = File.open(Rails.root.join("test2.csv")).read
text.gsub!(/\r\n?/, "\n")
text.each_line do |line|
  r = CSV.parse(line)

  c = Chat.new
  c.content = r[0][1]
  c.speaker = r[0][2]
  c.sequence = r[0][4]
  c.save
end
