ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Dots.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Dots.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Dots.Repo)

