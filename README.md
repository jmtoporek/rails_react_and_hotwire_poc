# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

This app is a Proof of Concept showing React on Rails and Stimulus/Hotwire side by side. There's a whole explanation of why I was interested in learning more about Stimulus/Hotwire. However after learning a bit of Stimulus I wanted to show how jQuery could pretty much do exactly what Stimulus/Hotwire can do. I love the idea of what Hotwire is doing, letting the server generate HTML and then swapping it out. However Stimulus is, to put it kindly, a big step backwards compared to jQuery. Stimulus reminds me of some of the things I disklike about Angular. I also have a hard time justifying the Return on Investment (ROI) with the time required to learn Stimulus, when I already know jQuery, and jQuery is overall a better library.

This only uses the concept of turbo frames. This whole gitrepo was written on a whim just to compare side by side the 3 different approaches to adding the same kind of feature, a search bar on the index page.

There are a lot of unconventional choices in this demo. I had to turn off turbolinks to that the React component doesn't fail on reload. There are no tests. It has Webpacker and Sprocket, because React is best with Webpacker and jQuery was written way before modern all these modern javascript tools. You could import jquery into a js file, but I wanted to do it with sprockets just because.