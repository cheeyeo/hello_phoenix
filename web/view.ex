defmodule HelloPhoenix.View do
  use Phoenix.View, root: "web/templates"

  # The quoted expression returned by this block is applied
  # to this module and all other views that use this module.
  using do
    quote do
      # Import common functionality
      import HelloPhoenix.Router.Helpers
      import Phoenix.Controller, only: [action_name: 1, controller_module: 1]

      # Use Phoenix.HTML to import all HTML functions (forms, tags, etc)
      use Phoenix.HTML

      # Common aliases
      alias Phoenix.Controller.Flash
    end
  end

  # Functions defined here are available to all other views/templates
  def handler_info(conn) do
    "Request Handled By: #{controller_module conn}.#{action_name conn}"
  end


  def title do
    "Awesome new title"
  end

  def show_messenger(msg) do
    "Hello World, from #{msg}!"
  end
end
