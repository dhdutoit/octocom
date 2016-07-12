# OCTOCOM

What is octocom? Octocom is probably nothing more than a pet project to help deal with complicated/repetative Git commands used on a daily basis by developers.

> Octocom was originally born as *octocat* but later changed 'cause that was just plain plagiarism. 
> -David du Toit

Octocom is supposed to be a 'simplistic' command that is expanded through use. It is meant to skip adding aliases and add more control over HOW certain Git commands are used by YOU/ME in our daily coding experience. Tricks, combos, complicated steps, catching the usual issues early, what ever you would like to make 'easier' to do.

## Code Example

`:~/projects/octocom (master)$ oc pl` - To do a pull from the branch on remote
`:~/projects/octocom (master)$ oc ps` - To do a push from the branch on remote
`:~/projects/octocom (master)$ oc cl -b feature` - To 'cleanse'/purge local un-pushed branches that start with 'feature', like 'feature/something-new'.

## Why am I writing this?

For three reasons. First is to get onto GitHub and excercise the "contribution" muscles, second I keep creating aliases to speed up my Git usage and having a simplistic command would make things easier and thirdly because I want to experience the effect of [eating your own dogfood](https://en.wikipedia.org/wiki/Eating_your_own_dog_food), because I use `oc` for both normal projects as well as committing to `oc` itself!

Saying this, I also have NO experience writing 'custom commands' so any suggestions, direction pointing or constructive ridicule is welcome in order to learn the 'better' ways of doing this.

## Installation

**NOTE:** This is written with experience of creating octocom on Ubuntu 16.04, 64bit.

1. Clone the repo/fork to a location of your choice on your local machine.
2. Create a symbolic link from your `~/bin` to the checkout location like `ln -s /home/user/projects/octocom oc`.
3. Make sure the `oc` file is executable.
4. Add `export PATH=$PATH:~/bin` to your `~/.bashrc`, if it isn't there already.
5. If you cdon't want to restart the terminal you can `source ~/.bashrc`.