![CI](https://github.com/sebivenlo/tex-thesis-skeleton/workflows/CI/badge.svg)

# tex-thesis-skeleton
A more simplified TEX thesis template that compiles without problems. This could be used for students for their bachelor/master thesis.

Many thanks to [Jurian Janssen](https://github.com/Woeler) for setting this up.

## Use this as a template repository

Your option is to use this as a template repository, by just clicking on **use htis template** button.

<img width="136" alt="image" src="https://user-images.githubusercontent.com/764295/78676875-54943900-78e7-11ea-9e5d-a23cab84ef24.png">

## Get it running manually on your machine

Manual building can also be done after you create your clone of the repository.

- Cloning the repository to your local machine
- then build it

```
pdflatex main.tex
pdflatex main.tex
```

### Build on mac/linux/git bash with make
```
make
```
On linux, or mac, install texlive and you are good to go. With a modern Windows and git-bash you can do the same thing.

## Get it running on windows
- install git-bash (the github windows tools)
- Install TexLive.
- Install Perl      http://strawberryperl.com/
- Then build it.
- to make make work on windows use git-bash and use chocolaty to install gnu make.


## Build of overleaf

With the free version of overleaf, you can zip the contents of your repo and copy that over and then continue working on overleaf.
You are advised to make a regular backup and use that backup to version it to say github.
For the free version they do not provide any guarantees, the professional version can however connect to a versioning system like github.
