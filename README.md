# DRC Digital

#### A Rails gallery for showcasing proof-of-concept email designs.

The creative team would often come to the developers to ask what is possible or doable in email design. Previously we'd look for examples somewhere on the web. Eventually we designed and coded our own, and built this site to showcase them.

We are using a few gems:
- Bootstrap
- Devise for authentication
- Paperclip for image upload
- AWS for storage (no longer used)
- jQuery and Masonry for finesse

One of the problems we had was that everything needed to be free. AWS was free for a while but now we're using Dropbox. The site is hosted free on [Heroku](http://drc-digital.heroku.com).

Browsing the site is public, authentication is for the dev team to add new creative. Code is added to our Codepen account and our site will use Codepen's embedded iFrame to display the email and code. This approach allows users to play in a kind of sandbox and see how things would look if the code were changed.

It also allows users to see the design in a mobile format for those who have trouble visualizing the change in layout.