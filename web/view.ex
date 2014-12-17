defmodule HelloPhoenix.View do
  use Phoenix.View, root: "web/templates"

  # The quoted expression returned by this block is applied
  # to this module and all other views that use this module.
  using do
    quote do
      # Import common functionality
      import HelloPhoenix.Router.Helpers

      # Use Phoenix.HTML to import all HTML functions (forms, tags, etc)
      use Phoenix.HTML

      # Common aliases
      alias Phoenix.Controller.Flash
    end
  end

  # Functions defined here are available to all other views/templates

  def root_path do
    HelloPhoenix.Router.Helpers.page_path(__MODULE__,:index)
  end

  def hello_path do
    HelloPhoenix.Router.Helpers.hello_path(__MODULE__,:index)
  end

  def hello_path(param) do
    HelloPhoenix.Router.Helpers.hello_path(__MODULE__,:show, param)
  end

  def show_messenger(msg) do
    "Hello World, from #{msg}!"
  end
end
