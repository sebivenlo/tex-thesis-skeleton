![CI](https://github.com/sebivenlo/tex-thesis-skeleton/workflows/CI/badge.svg)

# tex-thesis-skeleton
A more simplified TEX thesis template that compiles without problems. This could be used for students for their bachelor/master thesis.

Many thanks to [Jurian Janssen](https://github.com/Woeler) for setting this up.

## Get it running automatically via CI on github

Although possible, it has the follwinf drawbacks:

* It increases your waiting time when doing edit compile verify, which is quite normal when working with source code.
* It is more wasteful, energy wise. Uploading to the remote machine, have the server compile and get the result back costs cpu cycles in the whole chain. It may also cost you
your credits on the server infra structure.


If you stil insist, you can use your github repository as automated build system. It can also build your PDF file automatically.

- If you now click on "Actions" tab
- then on on a finished build
- then on **pdf**
- a pdf will be downloaded which is the result of the automated build

See how to do it.

### Fork the repository

You can fork the repository, then you immediatly have the github action file working for you and producing the pdf. See above how you then can access the pdf which will be created automatically on each push to master.

I you want to have a **private** repository, this is not possible if you fork a public repository, or you do not want to fork it, you can clone it, then just use your own remote github repository as remote repository.

Remember, if you do that, please keep a link in your README.md to this one for crediting. Thx!

### Use this as a template repository

Another option is to use this as template repository, just click on **use htis template** button.

<img width="136" alt="image" src="https://user-images.githubusercontent.com/764295/78676875-54943900-78e7-11ea-9e5d-a23cab84ef24.png">


## Get it running manually on your machine

This manual building can be done also if you forked it or created an own repository.

- Cloning the repository
- then build it

```
pdflatex main.tex
pdflatex main.tex
```

### Build on mac/linux with make
```
make
```
On linux, mac install texlive and you are good to go.

## Get it running on windows
- Install MiKTeX    https://miktex.org/ HOM: use TexLive.
- Install Perl      http://strawberryperl.com/
- Then build it.

### Build with windows via latexmk
```
latexmk -pdf
```

### Build without latex installation.

In the repo https://github.com/sebivenlo/xelatexd, we created a Dockerfile to create a docker image which
creates a full texlive latex installation. It also provides two scripts that start the docker container and run
you latex commands inside the container. The Makefile in this directory shows how to use it.


## Optional configuration
You may enable line numbering by creating an empty file in the root directory named `linenumberingOn.tex`.

