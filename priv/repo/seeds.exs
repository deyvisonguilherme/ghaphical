# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Ghaphical.Repo.insert!(%Ghaphical.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Ghaphical.Accounts
alias Ghaphical.Posts

Accounts.create_user(%{name: "Deyvison Guilherme", email: "deyvison.guilherme@live.com", password: "123456"})
Accounts.create_user(%{name: "Miguel Guilherme", email: "miugel.guilherme@live.com", password: "654321"})

for _ <- 1..10 do
    Posts.create_post(%{
        title: Faker.Lorem.sentence,
        body: Faker.Lorem.paragraph,
        user_id: [1,2] |> Enum.take_random(1) |> hd
    })
end