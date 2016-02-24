# Dots

Deploy on FreeBSD

1. `sudo pkg install elixir git vim`
2. `sudo pkg install npm -g`
3. Fix locale in `.login_conf` with `:lang=en_US.UTF-8:`
4. `git clone https://github.com/davidsantoso/dots.git`
5. Copy over the `prod.secret.exs` file
6. `sudo mix deps.get`
8. `sudo node node_modules/brunch/bin/brunch build --production`
9. `sudo env MIX_ENV=prod mix phoenix.digest`
10. `sudo env MIX_ENV=prod mix compile`
11. `sudo env PORT=80 env MIX_ENV=prod mix phoenix.server`

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
