class SolitaireCypher
	def initialize()
	end

	def encyphen s
		s = s.scan(/[a-zA-Z]*/).join.upcase
		s = s.scan(/.{5}|.+/).join(' ')
		s = s.scan(/.{1}|.+/).join(' ')
		s = s.gsub(/[A-Z]/) {|m| m.ord - 64}
		puts s
	end
end

# .scan(/.{5}|.+/).join(' ')
# .scan(/.{1}|.+/).join(' ')
# .gsub(/[A-Z]/) {|m| m.ord - 64}