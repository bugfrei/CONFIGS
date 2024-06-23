Namen, E-Mail und Editor anpassen!

```
[user]
    name = <Vorname Nachname>
    email = <E-Mail>
[core]
    editor = <vim|code|...>
[alias]
    h = !cat ~//githelp.txt
    a = add --all
    c = commit -m
    ac = commit -am
    co = commit
    ca = commit --amend --no-edit
    cm = commit --amend -m
    out = !git checkout $(git branch | fzf)
    test = !ii .
    s = status
    sc = stash clear
    t = tag
    b = branch
    ch = checkout
    chb = checkout -B
    m = checkout main
    good = bisect good
    bad = bisect bad
    l = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)'
    la = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all    
    ll = log -1 HEAD --raw --graph
    l1 = log -1 HEAD --raw --graph
    l2 = log -2 HEAD --raw --graph
    l3 = log -3 HEAD --raw --graph
    l4 = log -4 HEAD --raw --graph
    l5 = log -5 HEAD --raw --graph
    l6 = log -6 HEAD --raw --graph
    l7 = log -7 HEAD --raw --graph
    l8 = log -8 HEAD --raw --graph
    l9 = log -9 HEAD --raw --graph
    li = log --format='%Cred%h %Creset%an, %Cblue%ar (%ah)%n  > %s%n%Cgreen   %d%n' --graph --all
    lx = log --format='%h' --all
    cfg = config --global --edit
    cfgl = config --edit

[init]
    defaultBranch = main
[difftool "sourcetree"]
	cmd = opendiff \"$LOCAL\" \"$REMOTE\"
[remote]
    pushDefault = origin
[push]
    default = current
    autoSetupRemote = true
[filter "lfs"]
    clean = git-lfs clean -- %f
    smudge = git-lfs smudge -- %f
    process = git-lfs filter-process
    required = true
```

# ~/githelp.txt
```
ac  : commit -am $       ] Add & Commit + $ Message
co  : commit             ] Commit, Message via VIM
ca  : commit --amend -NE ] Commit amend, No Edit (nur Dateiänderungen hinzufügren)
cm  : commit --amend $   ] Commit amend, $ Message (nur Message ändern)
sc  : stash clear
t   : tag                  b   : branch
ch  : checkout
chb : checkout $         ] Checkout und $ Branch anlegen
good: Bisect GOOD          bad : Bisect BAD
cfg : config (global)      cfgl: config             ] LOKAL
ghcfg: gh Config
LOGS:
l, la    : Line, Line All (auch Branches)
ll,l1...9: Last Last, last 1...9 Logs
li, lx   : Andere Formate
```