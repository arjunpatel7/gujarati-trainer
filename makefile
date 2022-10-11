datasets: 
	for str in ga ka ; do \
		mkdir ./data/handwritten_characters/$${str}/char_images ; \
		cp -R ./data/handwritten_characters/$${str}/raw_scans/ ./data/handwritten_characters/$${str}/char_images/ ; \
		split-image ./data/handwritten_characters/$${str}/char_images/$${str}_1.jpg 5 5 --cleanup ; \
		split-image ./data/handwritten_characters/$${str}/char_images/$${str}_2.jpg 5 5 --cleanup ; \
		split-image ./data/handwritten_characters/$${str}/char_images/$${str}_3.jpg 5 5 --cleanup ; \
		split-image ./data/handwritten_characters/$${str}/char_images/$${str}_4.jpg 5 5 --cleanup ; \
	done
clean:
	rm -R ./data/handwritten_characters/ga/char_images
	rm -R ./data/handwritten_characters/ka/char_images