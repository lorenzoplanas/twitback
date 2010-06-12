require 'rubygems'
require 'twitter'

conn = Twitter::Base.new(Twitter::HTTPAuth.new ARGV[0], ARGV[1])
125.times do |page| 
  conn.user_timeline(:page => (126 - page)).reverse.each do |tweet| 
    puts "#{tweet.text} - #{tweet.created_at}"
  end
end
