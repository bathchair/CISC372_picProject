
image_pthread: image_pthread.c image_pthread.h
	gcc -g image_pthread.c -o image_pthread -lpthread -lm

image:image.c image.h
	gcc -g image.c -o image -lm

clean_ex:
	rm -f image image_pthread

clean:
	rm -f image image_pthread output.png
