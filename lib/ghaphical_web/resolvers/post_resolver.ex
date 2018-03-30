defmodule Ghaphical.PostResolver do
    alias Ghaphical.Posts

    def all(_args, _info) do
        {:ok, Posts.list_posts()}
    end
end