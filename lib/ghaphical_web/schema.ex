defmodule GhaphicalWeb.Schema do
    use Absinthe.Schema
    import_types GhaphicalWeb.Schema.Types

    query do
        field :posts, list_of(:post) do
            resolve &Ghaphical.PostResolver.all/2
        end

        field :users, list_of(:user) do
            resolve &Ghaphical.UserResolver.all/2
        end

        field :user, type: :user do
            arg :id, non_null(:id)
            resolve &Ghaphical.UserResolver.find/2
        end
    end
end