# bookmark_manager

The website will have the following specification:

- Show a list of bookmarks
- Add new bookmarks
- Delete bookmarks
- Update bookmarks
- Comment on bookmarks
- Tag bookmarks into categories
- Filter bookmarks by tag
- Users are restricted to manage only their own bookmarks

As a user
So that I can go back to one of my favourite saved pages
I'd like to see a list of my bookmarked/saved pages

Object                      |          Methods
----------------------------------------------------------------------
 Bookmark manager           |          View_list          
 List                       |                                



As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager


Object                      |          Methods
----------------------------------------------------------------------
 Bookmark manager           |          add_bookmark          
 List                       |                                

SQL set upto read database

$> brew install postgresql
$> ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
$>psql postgres
postgres=# \l - lists databases
postgres=# \q - quits
postgres=# CREATE DATABASE "input name" - if you put username i.e. fentonhaslam, makes psql deploy automatically. 

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE "bookmark_manager";
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
    
Copy the line below into the new sql file. \/ \/ \/ 
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

rackup -p 3000

to view bookmarks, navigate to 'localhost:3000/bookmarks'


Using SELECT to view the table
Using INSERT to add data to a table
Using SELECT to query data
Using DELETE to delete data
Using UPDATE to update data

