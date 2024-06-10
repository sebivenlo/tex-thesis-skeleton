![CI](https://github.com/sebivenlo/tex-thesis-skeleton/workflows/CI/badge.svg)

# tex-thesis-skeleton
A more simplified TEX thesis template that compiles without problems. This could be used for students for their bachelor/master thesis.

Many thanks to [Jurian Janssen](https://github.com/Woeler) for setting this up.

### Your own repository

If you want to have a **private** repository, this is not possible if you fork a public repository.

### Use this as a template repository

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
On linux, mac install texlive and you are good to go.

## Get it running on windows
- Install TexLive.
- Install Perl      http://strawberryperl.com/
- Then build it.
- to make make work on windows use git-bash and use chocolaty to install gnu make.

### Build with windows via make
```
make 
```
