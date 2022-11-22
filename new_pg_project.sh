#!/bin/zsh
echo "Step1: create an rspec project"
# Make the directory
mkdir $1
cd $1
# initialise bundler
bundle init
# add, then initialise rspec
bundle add rspec
rspec --init
# make a lib directory
mkdir lib
# copy boiler-plate code for postgresql project
echo "Step2: copying boiler-plate for postgres project"
cd ..
cp ./blanks_for_pg/database_connection.rb ./$1/lib/database_connection.rb
cp ./blanks_for_pg/app.rb ./$1/app.rb
cat ./blanks_for_pg/add_to_spec_helper.rb | cat - ./$1/spec/spec_helper.rb > temp
mv temp ./$1/spec/spec_helper.rb
echo "Step3: install gem for pg"
cd $1
bundle add pg
ruby app.rb
