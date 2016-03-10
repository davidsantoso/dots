# Dots

Deploy on FreeBSD

1. `sudo pkg install elixir git vim node`
2. `sudo pkg install npm -g`
3. Fix locale in `.login_conf` with `:lang=en_US.UTF-8:`
4. `git clone https://github.com/davidsantoso/dots.git`
5. `cd dots`
6. `mix deps.get`
7. `mix deps.compile exrm`
8. `npm install`
9. `sudo node node_modules/brunch/bin/brunch build --production`
10. `sudo env MIX_ENV=prod mix phoenix.digest`
11. `sudo env MIX_ENV=prod mix release`
12. `mkdir /tmp/dots && cp rel/dots/releases/0.0.1/dots.tar.gz /tmp/dots`
13. `cd /tmp/dots && sudo bin/dots start`

To start your Phoenix app:

  1. Install dependencies with `mix deps.get`
  2. Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  3. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
