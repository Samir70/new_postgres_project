# Making a new postgresql project that includes rspec

The folder here contains some boiler-plate for the postgres project and the script file.

## Copy this folder. 

I have a `Projects` folder, where I create my projects. That is where I would copy this folder. 

But the .sh file needs to be moved out of the blanks_for_pg folder and into `Projects`. Because that is where I would run it.

```bash
.
|- Projects
|---- /blanks_for_pg
|---- /project1
|---- new_pg_project.sh

```
I did the copying in the file explorer. It seems easier.

There is now another script: `add_sinatra2project`. It also has a blanks file, but rather than copying loads of things out of this repo, I made the script copy it from your clone. So this script expects to be run in the same folder you ran `git clone` to copy this repo.

## Make the script file executable

In your terminal, where `new_pg_project.sh` is, run:

> chmod 755 new_pg_project.sh  

This now allows you to run the script.

## Make a new project

Run the following in the terminal, while in the Projects folder. (Which is where I copied the script file).

> ./new_pg_project.sh test_project

Assuming you have succesfully created the music_library database, as described in the Makers course, you should get the following output:

```bash
Step1: create an rspec project
Writing new Gemfile to /Users/samir70/Projects/test_project/Gemfile
Fetching gem metadata from https://rubygems.org/...
Resolving dependencies...
Fetching gem metadata from https://rubygems.org/.
Resolving dependencies...
Using bundler 2.3.24
Using diff-lcs 1.5.0
Using rspec-support 3.12.0
Using rspec-core 3.12.0
Using rspec-expectations 3.12.0
Using rspec-mocks 3.12.0
Using rspec 3.12.0
  create   .rspec
  create   spec/spec_helper.rb
Step2: copying boiler-plate for postgres project
Step3: install gem for pg
Fetching gem metadata from https://rubygems.org/...
Resolving dependencies...
Fetching gem metadata from https://rubygems.org/...
Resolving dependencies...
Using bundler 2.3.24
Using diff-lcs 1.5.0
Using pg 1.4.5
Using rspec-support 3.12.0
Using rspec-mocks 3.12.0
Using rspec-core 3.12.0
Using rspec-expectations 3.12.0
Using rspec 3.12.0
{"id"=>"1", "title"=>"Doolittle"}
{"id"=>"2", "title"=>"Surfer Rosa"}
{"id"=>"3", "title"=>"Waterloo"}
{"id"=>"4", "title"=>"Super Trouper"}
{"id"=>"5", "title"=>"Bossanova"}
{"id"=>"6", "title"=>"Lover"}
{"id"=>"7", "title"=>"Folklore"}
{"id"=>"8", "title"=>"I Put a Spell on You"}
{"id"=>"9", "title"=>"Baltimore"}
{"id"=>"10", "title"=>"Here Comes the Sun"}
{"id"=>"11", "title"=>"Fodder on My Wings"}
{"id"=>"12", "title"=>"Ring Ring"}
```
The last bit is the output of the app.rb file. It requires that you have a postgresql database called `music_library`. If you don't like that bit: delete that line of the script.

The folder structure now looks like, with the new folder for `test_project`:

```bash
.
|- Projects
|---- /blanks_for_pg
|---- /test_project
|---- /project1
|---- new_pg_project.sh

```

## Only want an rspec project, without postgres

 - Copy the .sh file
 - name it new_rspec_project.sh
 - Delete everything new_rspec_project.sh after step 1, leaving something like:

 ```bash
 #!/bin/zsh
echo "Creating an rspec project"
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
 ```

 Make the file executable, sim to above.