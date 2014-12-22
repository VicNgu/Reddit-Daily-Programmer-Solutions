# This program reads through the input to find if any acronyms exist and replaces the acronyms
# with their expanded form.

$acronyms = {
  	"lol" => "laugh out loud",
  	"dw"  => "don't worry",
	"hf"  => "have fun",
 	"gg"  => "good game",
 	"brb" => "be right back",
 	"g2g" => "got to go",
	"wtf" => "what the fuck",
 	"wp"  => "well played",
 	"gl"  => "good luck",
 	"imo" => "in my opinion"
}

def acronymExpander(input)
	output = input.chomp.split(/\b/).map { |word| ($acronyms[word]) ? $acronyms[word] : word }.join
	output
end

while line = gets
	puts acronymExpander(line)
end
