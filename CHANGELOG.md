# Changelog

## Version 0.0.1

* Initial commit for the rake heroku:clone task.
* Allows cloning a database from a heroku server to another server or to your local machine.
* Requires heroku remote(s) to be set up and servers to have pgbackups installed.
* Restores to your local machine with pg_restore
