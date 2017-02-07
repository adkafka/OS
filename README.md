# OS
## This is a project by Adam Kafka and Ryan Santos to develop a simple Operating System for our class, CSE 403 at Lehigh University.

## Installation (Assuming OSX, and homebrew)
1. Run the install script [scripts/install\_all.sh]
2. Install GRUB [Usign this OS Dev site](http://wiki.osdev.org/GRUB_2#Installing_GRUB_2_on_OS_X)
3. Install qemu with homebrew
4. Run ``make``
5. Run ``make iso``
6. Run ``make run``

- If you get an error about auto\*, install automake and autoconf with ``brew install ..``
- If you get an error about xorriso, install it with ``brew install xorriso``

## Notes
Goal to add some basic libc functionality: [BitBucket link](https://bitbucket.org/pdclib/pdclib/src/95be959efe2ed2f36104ab5cffe9c222972d3e43/platform/posix/?at=default)
