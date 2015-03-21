#Concert Collector#

####[Concert Collector](http://concert-collector.herokuapp.com) on Heroku

####Written by Dustin Lewis

================================================

###Description:
A tracker program allowing a user to add artists and their respective concerts, past and future. Keep track of when you saw your favorite bands live!

#####Instructions:
1. Download zip file and extract to a directory.
2. Navigate to extracted directory.
3. `bundle install`
4. `rake db:create`
5. `rake db:migrate`
6. `rails server`  OR  `rails s`
7. Navigate to http://localhost:3000 in your browser.

####Known Bugs:
Date format field was not converted by Heroku for creating a new show. Format must be entered as YYYY-MM-DD.

###Planned Features/Changes:
- complete user authentication
- update layout
- sort shows by date and location

