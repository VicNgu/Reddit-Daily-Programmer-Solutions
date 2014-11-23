require 'chunky_png'

fileName = gets.chomp
image = ChunkyPNG::Image.from_file(fileName)

height = image.height
width =  image.width

for i in 0..width-1
	for j in 0..height-1
		color = (ChunkyPNG::Color.r(image[i,j]).to_f*0.21) + (ChunkyPNG::Color.g(image[i,j]).to_f*0.72) + (ChunkyPNG::Color.b(image[i,j]).to_f*0.07)
		color = color.to_i
		image[i,j] = ChunkyPNG::Color.rgb(color, color, color)
	end
end

image.save('sample.png')