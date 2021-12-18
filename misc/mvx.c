#define _GNU_SOURCE
#include <fcntl.h>
#include <stdio.h>
#include <sys/stat.h>

/*
 * Cross-rename of two paths: file, directory, symlink (not the target),
 * also subvolumes (on btrfs)
 *
 * Example:
 *
 *    file - a file
 *    dir  - a directory
 *
 *    $ mvx file dir
 *
 *    file - a directory named 'file'
 *    dir  - a file named 'dir'
 *
 * Q: Should this be implemented by mv?
 * A: Yes.
 */

int main(int argc, char **argv)
{
	int ret;
	struct stat st;

	if (argc != 3) {
		fprintf(stderr, "Usage: mvx path1 path2\n");
		return 1;
	}
	if (stat(argv[1], &st) < 0) {
		fprintf(stderr, "stat: failed for %s: %m\n", argv[1]);
		return 1;
	}
	if (stat(argv[2], &st) < 0) {
		fprintf(stderr, "stat: failed for %s: %m\n", argv[2]);
		return 1;
	}

	ret = renameat2(AT_FDCWD, argv[1], AT_FDCWD, argv[2], RENAME_EXCHANGE);
	if (ret < 0)
		fprintf(stderr, "renameat2: failed with %m\n");
	return ret;
}
