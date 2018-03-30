defmodule GhaphicalWeb.Router do
  use GhaphicalWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GhaphicalWeb do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit]
    resources "/posts", PostController, except: [:new, :edit]
  end

  forward "/api", Absinthe.Plug,
    schema: GhaphicalWeb.Schema

  forward "/ghaphical", Absinthe.Plug.GraphiQL,
    schema: GhaphicalWeb.Schema
end
