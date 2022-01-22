# Srujan's Dotfiles

This repository contains my custom configuration files for many terminal and developer related things.

bootstrap.sh does symlinking for you!

## Setup/Installation

01. Clone the repository:

    ```console
    git clone https://github.com/srujanm111/dotfiles.git
    ```

02. Run the setup script:

    ```console
    cd dotfiles
    sh easysetup.sh
    ```
    <details>
      <summary><em>Optional: installation tip</em></summary>

      The setup script will place zsh-related dotfiles in your home directory if you haven't set `$ZDOTDIR`. If you want to be more organized, you can configure zsh to use a subdirectory like ~/.zsh/ for these files. BEFORE you run the setup script, you can do this by adding ```export ZDOTDIR=~/.zsh``` to your system-level zshenv and restarting your terminal.
    </details>

03. Additional steps:
 - [Install the recommended font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k) if terminal prompt icons don't show or run `p10k configure` to configure your own prompt with the setup wizard

## Updating

Run `install.sh` to get the latest versions of software being used. It is safe to run `install.sh` more than once.

## Resources

### Zsh
 - [Zsh Reference Card](http://www.bash2zsh.com/zsh_refcard/refcard.pdf)
 - [Startup Files](https://zsh.sourceforge.io/Intro/intro_3.html)
 - [zsh-lovers](https://grml.org/zsh/zsh-lovers.html) man page
