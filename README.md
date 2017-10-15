# PostAd
PostAd is intended to be a public platform for users to post advertisements. <br />
Below is what the website looks like. <br />
<img src="https://github.com/rozar17/proj2/blob/master/img/1.%20index.jpg"/> <br />



## System dependencies
* Ruby version 		=>		"ruby 2.3.3"
* Rails version 	=>		"rails 5.3.1" <br />



## Installation
To have PostAd up and running on your PC, you will require a copy of _Rails 5.1_, which can be downloaded under http://railsinstaller.org/en. <br />

Download _railsinstaller-3.4.0.exe_ from the link above and install on your computer. <br />
The above package includes:
*	Ruby 2.3.3
*	Rails 5.1
*	Bundler
*	Git
*	Sqlite
*	TinyTDS
*	SQL Server Support
*	DevKit



Once installed, open Git Bash. <br />
Go to _C:\Sites_
```
cd C:\Sites
```



Download a copy of this project
```
git clone https://github.com/ZhiruiWang1/PostAd.git
```
<img src="https://github.com/rozar17/proj2/blob/master/img/2.%20gitBash_download.jpg"/> <br />



Change directory to the project location
```
cd PostAd
```
<img src="https://github.com/rozar17/proj2/blob/master/img/3.%20gitBash.jpg"/> <br />



Run _bundle install_ to get the latest gems (libraries) needed for this project. <br />
The gems needed for this project are defined under the Gemfile.
```
bundle install
```
<img src="https://github.com/rozar17/proj2/blob/master/img/4.%20bundle%20install.jpg"/> <br />



Run _rails db:migrate_ to execute the migrations under db/migrate/ on the project that have not run yet starting with the oldest timestamp.
```
rails db:migrate
```
<img src="https://github.com/rozar17/proj2/blob/master/img/5.%20db%20migrate.jpg"/> <br />



Next run _rails server_ (or "s" for server) as per the image below.
```
rails s
```
<img src="https://github.com/rozar17/proj2/blob/master/img/6.%20rails%20s.jpg"/> <br />



Once the server is up and running, open a browser and type "http://localhost:3000/" as per the image below.
```
http://localhost:3000/
```
Voila! The project is up and running. <br />
<img src="https://github.com/rozar17/proj2/blob/master/img/1.%20index.jpg"/> <br />



## Development environment
For Ruby on Rails development, we recommend macOX or Linux rather than Windows. Windows system has weakness of compatibility for Ruby on Rails. <br />



## Documentation
https://github.com/ZhiruiWang1/PostAd/wiki <br />



## Versioning
We use gitHub for versioning. <br />



## Authors
* Zhirui Wang
* Chongyang Zhong
* Rosa Rodriguez <br />



