## Zap setup

### To manage rubies, install RVM (not in scope)

* https://rvm.io/

### Clone the repo
* git clone [REPO NAME HERE]
* cd into the repo

### Configure the application ruby and gemset using rvm

* rvm get latest
* rvm install 2.5.1 --disable-binary
* rvm ruby-2.5.1 do rvm gemset create zapzapzap
* rvm 2.5.1@zapzapzap do gem list
* rvm --default use 2.5.1
* rvm 2.5.1@zapzapzap do gem install undler

### Install gems with bundler
* bundle install

### Play Game
* ruby app.rb
