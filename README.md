# test_bdd

please setup as per the steps in
https://github.com/Flutterbee/tinyowl-web-automation/tree/pos

OR

Install ruby 2.0 or above
RVM is ruby version manager. We can install it

```bash
$\curl -sSL https://get.rvm.io | bash -s stable --ruby
$rvm install 2.2.0
$rvm use 2.2.0 --default
```
on ubuntu

```bash
$sudo apt-get install ruby
```

Install bundler

```bash
$gem install bundler
```
clone the repo and run bundle install ,all dependencies will be added
```bash
$git clone git@github:Flutterbee/tinyowl-web-automation.git
$cd tinyowl-web-automation
$bundle install
```


For Poltergeist, You must have PhatomJs installed.
On Mac : Use HomeBrew. Please note MacPort installtion is not recommended

```bash
$brew install phantomjs
```

On Ubuntu,you  use below command

```bash
$sudo apt-get install phantomjs
```
