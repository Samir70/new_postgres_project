#!/bin/zsh
# Change into the directory
cd $1
echo "Now adding sinatra"
# Add the sinatra library, the webrick gem, and rack-test
bundle add sinatra sinatra-contrib webrick rack-test
echo "Copying boilerplate for sinatra project"
# Create the app_spec.rb integration tests file
mkdir spec/integration
cd ..
cp ./new_postgres_project/blanks_for_sinatra/application_spec.rb ./$1/spec/integration/app_spec.rb
cp ./new_postgres_project/blanks_for_sinatra/app.rb ./$1/app.rb
cp ./new_postgres_project/blanks_for_sinatra/config.ru ./$1/config.ru
