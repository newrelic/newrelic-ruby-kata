newrelic-ruby-kata
==================

Using New Relic and Heroku see how many things you can find and fix to make this app perform fast!

Step 1
-------
Get the code. The code is waiting to be forked on [github](https://github.com/newrelic/newrelic-ruby-kata)

Load the sample DB locally:

    rake db:create
    pg_restore --verbose --clean --no-acl --no-owner -h localhost -U $USER -d newrelic-ruby-kata_development public/sample-data.dump`

Step 2
-------
Deploy your app to Heroku and load the database there

    heroku apps:create
    heroky addons:add pgbackups:plus newrelic:standard memcachier
    heroku pgbackups:restore DATABASE 'http://newrelic-ruby-kata.herokuapp.com/sample-data.dump'


Step 3
-------
You can watch a [video on getting started](http://newrelic.com/resources/training) with the New Relic agent to help get you started. The New Relic agent will help you find and solve the performance issues in this application as well as help you see the complete impact of your changes.

Step 4
-------
Fix the code / Solve as many of the Katas as you can. There are seven distinct Katas in this application that can be torn apart and fixed by using your awesome dev abilities and the deep metrics that New Relic provides.

Step 5
-------
Let us know how you did, what you liked or disliked, what helped you find problems or what were the challenges, what you like about New Relic and what you don't - we just want to hear from you and see what we can do to get better. We'll even send you something for demonstrating your geek super powers when you complete the Kata - just provide us with your [thoughts and a link to your forked repo](https://support.newrelic.com/home).
