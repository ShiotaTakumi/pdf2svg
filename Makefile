all: convert clean

convert:
	pdftocairo -r 300 -svg input.pdf output.svg

clean:
	# Delete only .png files in the current directory
	find . -maxdepth 1 -type f -name "*.png" -exec rm {} \;
