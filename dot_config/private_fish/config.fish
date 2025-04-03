if status is-interactive
  atuin init fish | source
  direnv hook fish | source
  starship init fish | source


  alias lg "lazygit"
    # Commands to run in interactive sessions can go here
end
