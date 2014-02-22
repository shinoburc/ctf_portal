# CTF portal

ctf_portal is now under development.

CTF(Catch The Flag) portal site on rails.

## install and start


  ~~~ sh
  $ git clone https://github.com/shinoburc/ctf_portal.git
  $ cd ctf_portal
  $ bundle install --path vendor/bundle
  $ rake db:setup
  $ rails s
  ~~~

Go to [http://localhost:3000](http://localhost:3000)

## Heroku

  ~~~ sh
  $ git clone git://github.com/shinoburc/ctf_portal.git
  $ cd ctf_portal
  $ heroku create YOUR_APP_NAME
  $ git push heroku master
  $ heroku run rake db:setup
  ~~~

Go to http://YOUR_APP_NAME.heroku.com

## LICENSE

GNU GPLv3.

![GNU GPL3v or later](https://www.gnu.org/graphics/gplv3-88x31.png)
