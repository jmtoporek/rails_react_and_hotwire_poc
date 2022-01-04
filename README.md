# README

This app started as just a way to demonstrate how you might have [React on Rails](https://github.com/shakacode/react_on_rails) and [Stimulus/Hotwire](https://hotwired.dev/) side by side in a single [Ruby on Rails](https://rubyonrails.org/) app. However it is evolving into something else - I'd like this repo to be sort of like the [TODO MVC](https://todomvc.com/) for Ruby on Rails producing the same exact features but delivered using different javascript approaches. This repo demonstrates the following Javascript approaches;

* Ruby on Rails Scaffold with no extra javascript, just rails-ujs (the control for this experiment)
* React on Rails
* Stimulus/Turbo/Hotwire
* jQuery (peforming like Hotwire)
* Plain old Javascript (peforming like Hotwire)

I'm hoping to add a version that uses [StimulusReflex](https://docs.stimulusreflex.com/) and/or [CableReady](https://cableready.stimulusreflex.com/) eventually.

This proof of concept was inspired by [this blog post by David Colby](https://www.colby.so/posts/instant-search-with-rails-6-and-hotwire). It's evolved a bit, and even David updated his post just because some of the stuff in the original post, which was written in August 2021, had become outdated.

There's a whole explanation of why I was interested in learning more about Stimulus/Turbo/Hotwire. However after learning a bit of Stimulus I wanted to show that at least for this use case and functionality, that you could do it with just jQuery, and then even Plain Old Javascript, albeit with a special API endpoint.

I love the concept of what Turbo is doing, letting the server generate HTML and then swapping it out. However Stimulus is, in my not so humble opinion, a big step backwards compared to [jQuery](https://jquery.com/). I'd be happy to tell you all the reasons I didn't like it. My perspective is that if I decide to learn something new it better have a good Return on Investment (ROI). That ROI could be performance, or less code or effort, or better syntax - anything that makes my life easier. For the short time I did try Stimulus out I didnt see any of those things materializing. I really like and still believe in using jQuery if you want to keep things simple, and using React for more complex interactive web pages.

There are a few unconventional choices I made along the way. I do my best to make note of all them when possible. At some point early on this repo was using Rails 6, and I had to turn off turbolinks to that the React component doesn't fail on reload. Since then I've upgraded to Rails 7, which ditches turbolinks and uses @hotwired/turbo-rails. The app uses Webpacker and Sprocket, but not importmaps. Webpacker, because I've become spoiled by hotloading in a webpack dev server and have no desire to give it up. Sprockets because jQuery was written way before modern all these modern javascript tools. I believe you can import jquery into a js file the same way you would import React. I just haven't tried it.

Each different approach has its own controller and layout so I could isolate the javascript files and have separate bundles for each version. Some versions have their own views files (React and Turbo), although it's wasn't necessary for jQuery and plain old Javascript.

I am trying to adhere to some guiding principles while building this repo. Those principles include;

* Each version should be as close as possible in feature sets. There are some minor exceptions , but I try to maintain feature parity whenever possible.

* Use the least amount of dependencies required. This makes things easier when time comes to upgrade. Lots of these types of demos include Redis and Websockets, but its not necessary for this demo. I made an exception for webpacker because I love using webpack-dev-server too much, so you'll also need Node.js.

* Make code as explicit and obvious whenever possible - each version has its own layout and javascript bundle.

* Try to keep things DRY when possible without compromising the other stuff listed above. Each version inherits controller of the players_controller, i.e. `ReactOnRails::PlayersController < PlayersController`. Also the `app/helpers/players_helper.rb` allows the jQuery and Plain Old Javascript versions to reuse the views of the plain old Rails Scaffold version.

Eventually I'd love to do a side by side comparison on file size and load times as well as the amount of code required to deliver each version. Perfomance is nice and all, but I prize developer happiness as well as being able to deliver functionality with the least amount of code possible, performance be damned.

I firmly agree with Donald Knuth's quote about premature optimization is the root of all evil. I find it laughable when people get their panties in a bunch over jQuery's load time. If that's your greatest concern while building a CRUD app you should really consider talking to a therapist. 

However I'm a bit of an arrogant SOB who sometimes has something to prove. When I shared this repo on the web and said jQuery is still cool and I'd rather use it instead of Stimulus, someone insinuated that I didn't know how the web worked and declared 'sending ANY code across the network that the client doesn't need, (means) you're doing a poor job'. That's why I decided to create a plain old javascript version. It's completely uncessary, a waste of my time, and I wouldn't recommend doing it. But I need everyone to aware that I know how to do it with POJ. I just choose not to unless my ego is at stake.

If you want to get this running here's what you'll need:

* Ruby version - this app is using 3.0.2, but also works with 2.7, since this is using Rails 7

* System dependencies - Ruby and Node.js. While I tend to believe that the fewer dependencies an app relies on the easier it is to maintain and upgrade, however hotloading on webpack dev server is something I like too much to give up.

* Database creation - using SQLite

* Database initialization - rails db:migrate, rails db:seed

* How to run the test suite - as of 2022.01.03 there are zero tests. In theory I will fix this. In practice I'll move on to 3 other side projects before I even give it a second thought.

* Deployment instructions - make sure node and correct version of ruby is installed