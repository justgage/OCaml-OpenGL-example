# What is it?

This is a very simple example of how to get OCaml, OpenGL, and GLUT all playing together. Why? because I love OCaml as a language and feel it would be a really good fit for game development. 

# How to build it?

Naturally you must have OCaml and Opam installed. After that do:

```
$ opam install core lablgl
```

Also you have to install OpenGL and GLUT in whatever way your OS requires.

after that just run `make` and it will create an executable called `main.native`. The current one was compiled on Fedora.
