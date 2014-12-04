#include "iosdevice.h"

const char *device_udid;

static void print_help() {
	printf("iosdevice usage:\niosdevice [-u]\n\nParameters:\n\n\tu\tUDID of a specific device to filter on\n\n");
}

int main (int argc, char *argv[]) {
	if (argc == 1) {
		print_help();
		return 0;
	}

	int index;
	for(index = 0; index < argc; index++) {
		printf("The %d is %s\n", index,argv[index]);
	}

	int opt;

	while ((opt = getopt(argc, argv, "u:h")) != -1) {
		printf("opt\n");
		switch (opt) {
			case 'u':
				device_udid = optarg;
				printf("Udid: %s\n", device_udid);
			break;
			case 'h':
				print_help();
				break;

			default:
				abort ();
		}
	}

	return 0;
}