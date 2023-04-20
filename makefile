
image_pthread: image_pthread.c image_pthread.h
	gcc -g image_pthread.c -o image_pthread -lpthread -lm

image_mp: image_mp.c image.h
	gcc -g -fopenmp image_mp.c -o image_mp -lm

image:image.c image.h
	gcc -g image.c -o image -lm

clean_ex:
	rm -f image image_pthread image_mp

clean:
	rm -f image image_pthread output.png
