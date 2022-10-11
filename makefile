datasets: 
	mkdir ./data/char_images
	for str in ga ka ; do \
		mkdir ./data/char_images/$${str} ; \
		cp -R ./data/raw_scans/$${str}/ ./data/char_images/$${str}/ ; \
		split-image ./data/char_images/$${str}/$${str}_1.jpg 5 5 --cleanup ; \
		split-image ./data/char_images/$${str}/$${str}_2.jpg 5 5 --cleanup ; \
		split-image ./data/char_images/$${str}/$${str}_3.jpg 5 5 --cleanup ; \
		split-image ./data/char_images/$${str}/$${str}_4.jpg 5 5 --cleanup ; \
	done
clean:
	rm -R ./data/char_images/