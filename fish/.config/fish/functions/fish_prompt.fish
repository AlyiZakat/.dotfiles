function fish_prompt
    set -g __fish_git_prompt_show_informative_status 1
    set -g __fish_git_prompt_char_dirtystate "+"
    set -g __fish_git_prompt_color_dirtystate green
    set -g __fish_git_prompt_color_branch yellow
    set -g __fish_git_prompt_showupstream "informative"
    set -g __fish_git_prompt_char_cleanstate "✓ "
    printf "%s" (fish_git_prompt)
    echo (set_color blue) (prompt_pwd) (set_color white)'>' (set_color normal)
end
