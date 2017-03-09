## Purpose
* This is a very simple CLI written as a ruby gem. :tada:
* This gem's current function is to track crop yields. :deciduous_tree:
* The app is a companion to medium write up, about [Creating a CLI ruby gem!](https://medium.com/@theorynest/creating-a-cli-ruby-gem-1dbf0990652b#.bx85273tb). :computer:

## Dependencies
### Install Xcode Tools
`xcode-select --install`

### Install [Homebrew](http://brew.sh/)
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### Install [RVM](https://rvm.io/)
`\curl -sSL https://get.rvm.io | bash -s stable`

### Load up RVM on shell instantiation
`echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile`

### Ensure RVM is installed correctly
`type rvm | head -1`

### Install [Ruby](https://www.ruby-lang.org/en/)
`rvm install 2.4.0`

### Install [Bundler](http://bundler.io/)
`gem install bundler`


## Running
### Get the code
`git clone git@github.com:jks8787/crop_tracker.git`

### Use the correct ruby version
`rvm use 2.4.0`

### Install It locally
`rake install`

### To Run Tests
  `rake spec`

### Check it out
`crop_tracker help`


## Usage
### To Upload a file

- `crop_tracker test_file.txt`
OR
- `crop_tracker < test_file.txt`

### To Add A Crop

- `crop_tracker add crop Kale 10oz`

### To Update An Amount

- `crop_tracker add amt Kale 2oz`
OR
- `crop_tracker subtract amt Kale 1oz`

### To Summary

- `crop_tracker summary`

### To Clear All Data

- `crop_tracker clear`


## Resources
* [Bundler Gem](https://github.com/bundler/bundler)
* [Bundler Docs](http://bundler.io/v1.14/man/bundle-gem.1.html)

MIT License

Copyright (c) 2017 Janice K.N. Smith

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
