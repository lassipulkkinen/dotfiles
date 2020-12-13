# .config/fish/config.fish

set fish_greeting
alias ls 'ls --color=auto'

function fish_title
  echo (whoami)@(hostname) (prompt_pwd)
end

function fish_prompt
    set -l last_pipestatus $pipestatus
    set -l color_prompt normal

    set -l prompt_status ( \
      __fish_print_pipestatus \
      " [" \
      "]" \
      "|" \
      (set_color $fish_color_status) \
      (set_color $fish_color_status) \
      $last_pipestatus \
    )

    echo -n -s \
      (set_color $color_prompt)$USER@(prompt_hostname)' ' \
      (set_color $fish_color_cwd)(prompt_pwd) \
      (set_color $color_prompt)(fish_vcs_prompt) \
      (set_color $color_prompt)$prompt_status \
      (set_color $color_prompt)'$ '
end

function fish_mode_prompt
  set_color --bold brwhite
  switch $fish_bind_mode
    case default
      echo -n '[N] '
    case insert
      set_color normal
      set_color white
      echo -n '[I] '
    case replace_one
      echo -n '[R] '
    case visual
      echo -n '[V] '
    case '*'
      echo -n '[?] '
  end
  set_color normal
end

fish_vi_key_bindings

# can't add colors here yet; the fish project is considering removal of universal variables,
# see https://github.com/fish-shell/fish-shell/issues/7379.
