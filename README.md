Sky Bill unattended test 
========================

**Author:** Omar Alvarez

Task
----

To display a customer's Sky bill

## Requirements

* Complete the task in a language of your choice using whatever tools or frameworks that you want.
* Must consume bill JSON from endpoint: 
```
http://safe-plains-5453.herokuapp.com/bill.json
```
* JSON must be consumed by a server acting as a proxy.

Instructions
------------
These are the instructions for how to download and run the application on a local server:

```sh
$ git clone https://github.com/omajul85/sky-bill
$ cd sky-bill/
$ bundle
$ rackup
```
Then, you can open your browser and visit `localhost:9292`.


## Testing

You can run the test using the command below:

```sh
$ rspec
```


Project structure
-----------------

The tree below shows how the project is organised:

```sh
.
├── app.rb
├── config.ru
├── Gemfile
├── Gemfile.lock
├── lib
│   └── bill.rb
├── public
│   ├── css
│   │   └── application.css
│   ├── images
│   │   ├── favicon.ico
│   │   └── logo.png
│   └── javascripts
│       └── accordion.js
├── README.md
├── spec
│   ├── bill_spec.rb
│   ├── features
│   │   └── bill_feature_spec.rb
│   ├── spec_helper.rb
│   └── support
│       └── bill.json
└── views
    ├── _call_charges.erb
    ├── helpers
    │   └── view_helpers.rb
    ├── index.erb
    ├── _store.erb
    └── _subscriptions.erb
```

The server file `app.rb` is in the project root folder. The project has a lib folder that contains the business logic (ruby classes). The unit test are stored on the spec folder. The subfolder features contains the feature tests (tests related to the web application seen on a browser). The folder views contains the presentation layer, that is, the index view (for the home page) and some partials (one for each category of information according to the given json file). The folder public contains 3 subfolders, one for the CSS files, other for the images used on the application and finally another for the javascript files (accordion effect in this case).

Deployment
----------

The application has been pushed to Heroku using Git. You can see the result <a href="https://sky-test-omajul85.herokuapp.com/" target="_blank">here</a>.