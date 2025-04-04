if status is-interactive
    nvm use lts
    eval (ssh-agent -c)
end

set fish_greeting ""

if type -q eza
    alias ll "eza -l -g --icons"
    alias lla "ll -a"
end

# Created by `pipx` on 2024-12-12 12:46:32
set PATH $PATH /home/yannick/.local/bin



function cfcr
    set dir $argv[1]
    if test -z "$dir"
        set dir "."
    end

    set filecount 0
    set all_contents ""

    find $dir -type f \
    ! -path "*/node_modules/*" \
    ! -path "*/.git/*" \
    ! -path "*/.angular/*" \
    ! -path "*/.vscode/*" \
    ! -path "*/.idea/*" \
    ! -path "*/.svn/*" \
    ! -path "*/.DS_Store" \
    ! -path "*/dist/*" \
    ! -path "*/build/*" \
    ! -path "*/coverage/*" \
    ! -path "*/fonts/*" \
    ! -path "*/.fonts/*" \
    ! -path "*/.next/*" \
    ! -name "package-lock.json" \
    ! -name "yarn.lock" \
    ! -name "*.log" \
    ! -name "*.map" \
    ! -name "*.ico" \
    ! -name "*.woff" \
    ! -name "*.woff2" \
    ! -name "*.ttf" \
    ! -name "*.eot" \
    ! -name "*.svg" \
    ! -name "next-env.d.ts" \
    ! -name "*.config.ts" \
    ! -name "*.config.js" \
    ! -name "*.config.mjs" \
    -print0 | while read -z file
        set content (cat "$file")
        set all_contents "$all_contents=== Contents of $file ===\n\n$content\n\n=== End of $file ===\n\n"
        echo "Successfully copied contents of $file to clipboard"
        set filecount (math $filecount + 1)
    end

    printf "%b" $all_contents | xclip -selection clipboard

    if test $filecount -eq 0
        echo "No files found to copy"
    else
        echo "Completed! Copied contents of $filecount files to clipboard"
    end
end

# pnpm
set -gx PNPM_HOME "/home/yannick/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
