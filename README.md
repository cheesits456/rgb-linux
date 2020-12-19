# RGB Linux

A simple RGB fan controller for MSi motherboards in Linux machines. This script will make RGB devices connected to your mobo's RGB header(s) have a rainbow gradient fading effect.

## Requirements

- Only works for motherboards on [this](https://github.com/nagisa/msi-rgb/#reportedly-working-boards) list
- Clone and compile <https://github.com/nagisa/msi-rgb>
- Move the file `./target/release/msi-rgb` to somewhere in your `$PATH` environmental variable.

## Usage

- Clone this repo and `cd` into it
- Execute `sudo ./fans.sh`
