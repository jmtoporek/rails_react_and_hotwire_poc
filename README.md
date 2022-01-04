# README

This app started as just a way to demonstrate how you might have [React on Rails](https://github.com/shakacode/react_on_rails) and [Stimulus/Hotwire](https://hotwired.dev/) side by side in a single [Ruby on Rails](https://rubyonrails.org/) app. However it is evolving into something else - I'd like this repo to be sort of the [TODO MVC](https://todomvc.com/) of Ruby on Rails producing the same exact features delivered using different javascript approaches.

This proof of concept was inspired by [this blog post by David Colby](https://www.colby.so/posts/instant-search-with-rails-6-and-hotwire). It's evolved a bit, and even David updated his post just because some of the stuff in the original post, which was written in August 2021 was outdated.

There's a whole explanation of why I was interested in learning more about Stimulus/Turbo/Hotwire. However after learning a bit of Stimulus I wanted to show that at least for this use case and functionality, that you could do it with just plain old jQuery, and then even plain old javascript, albeit with a special API endpoint.

I love the concept of what Turbo is doing, letting the server generate HTML and then swapping it out. However Stimulus is, in my not so humble opinion, a big step backwards compared to [jQuery](https://jquery.com/). I'd be happy to tell you all the reasons I didn't like it. My perspective is that if I decide to learn something new it better have a good Return on Investment, either writing less code or better syntax or making my life easier. For the short time I did try Stimilus out I didnt see any of those things materializing. I really like and still believe in jQuery for the simple stuff, and React for the more complex stuff.

There are some unconventional choices in this demo. I do my best to make note of all those choices when possible. At some point this repo was using Rails 6 and I had to turn off turbolinks to that the React component doesn't fail on reload. It uses Webpacker and Sprocket, because I've become spoiled by hotloading in a webpack dev server and have no desire to give it up. jQuery was written way before modern all these modern javascript tools. You could import jquery into a js file and use importmaps, but I used sprockets.

Each approach has its own controller and layout so I could isolate the javascript files and have separate bundles for each version. Some versions have their own views files (React and Turbo), although it's wasn't necessary for jQuery and plain old Javascript.

Eventually I'd love to do a side by side comparison on file size and load times as well as the amount of code required to deliver each version. Perfomance is nice and all, but I prize being able to deliver functionality with the least amount of code possible, performance be damned.

I firmly strongly agree with Donald Knuth's quote about premature optimization is the root of all evil. I find it laughable when people worry about jQuery's load time. If that's your greatest concern while building a CRUD app you really should talk to a therapist, you might have OCD. But also I'm an arrogant bastard with something to prove. When I shared this repo on the web and said jQuery is still cool and I'd rather use it instead of Stimulus, someone insinuated that I didn't know how the web worked and declared 'sending ANY code across the network that the client doesn't need, you're doing a poor job'. That's why I decided to create a plain old javascript version. It's completely uncessary, a waste of my time, and I wouldn't recommend doing it.

If you want to get this running here's what you'll need:

* Ruby version - this app is using 3.0.2, but also works with 2.7.X

* System dependencies - have Ruby. This also uses Webpack so you'll need Node as well. I tend to believe that the fewer dependencies an app has the better (it makes it easier to maintain and upgrade, fewer surprises), but hotloading on webpack dev server is something I have no desire to give up.

* Configuration

* Database creation - for now its using SQLite

* Database initialization - rails db:migrate, rails db:seed

* How to run the test suite - as of 2022.01.03 there are zero tests. In theory I will fix this. In practice I'll move on to 3 other side projects before I even give it a second thought.

* Services (job queues, cache servers, search engines, etc.) - lots of Stimulus/Turbo tutorials use redis, but it's totally unnecessary so we're skipping it

* Deployment instructions - make sure node and correct version of ruby is installed

TODOs:
* use format for turbo controller on index to return turbostream
