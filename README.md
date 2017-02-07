# OS
## This is a project by Adam Kafka and Ryan Santos to develop a simple Operating System for our class, CSE 403 at Lehigh University.

## Installation (Assuming OSX, and homebrew)
1. Run the install script [scripts/install\_all.sh]
2. Install GRUB [http://wiki.osdev.org/GRUB_2#Installing_GRUB_2_on_OS_X]
3. Install qemu with homebrew
4. Run ``make``
5. Run ``make iso``
6. Run ``make run``

- If you get an error about auto*, install autoreconf and autoconf with ``brew install ..``
- If you get an error about xorriso, install it with ``brew install xorriso``
