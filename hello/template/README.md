# Hello OCaml: Your First OCaml Project

Welcome to your first OCaml project! This tutorial will guide you through the basics of OCaml development, introducing you to the typical project structure and essential workflows. By the end, you'll have a simple "Hello, World!" program up and running, along with the knowledge to develop and test your OCaml projects.

## What You'll Learn

- Basic OCaml project structure
- Setting up your development environment
- Writing and running a simple OCaml program
- Writing and running tests
- Generating documentation
- Formatting OCaml code
- Using a REPL for interactive development

## Prerequisites

Before we begin, you need to install the standalone [Dune binary](https://preview.dune.build/) (currently in Developer Preview).
This is all you need to get started with this project!

## Project Structure

Let's start by understanding the structure of our project:

```text
hello/
├── bin/
│   └── main.ml            # Source for the executable
├── lib/
│   └── hello.ml           # Library code
├── test/
│   └── test_hello.ml      # Tests for our library
├── dune-project           # Project configuration
├── LICENSE
└── README.md              # This file
```

## Setting Up Your Development Environment

For the best development experience, we recommend using an Integrated Development Environment (IDE) or a text editor with OCaml support.

For Visual Studio Code:
1. Install the ["OCaml Platform" extension](https://marketplace.visualstudio.com/items?itemName=ocamllabs.ocaml-platform) from the VS Code marketplace.
2. Open your project folder in VS Code.

For other editors, refer to the [OCaml editor setup guide](https://ocaml.org/docs/set-up-editor).

## Essential Workflows

### Building and Running

To build the project:

```bash
dune build
```

To run the main program:

```bash
dune exec hello
```

### Testing

Run tests with:

```bash
dune test
```

### Documentation

Generate documentation:

```bash
dune build @doc
```

### Formatting

Format your OCaml code and Dune configuration files:

```bash
dune fmt
```

This command will install `ocamlformat` if it hasn't been installed, and then format both the OCaml code and the Dune configuration files.

### REPL (Read-Eval-Print Loop)

Use OCaml's REPL with your project:

```bash
dune utop lib
```

In the utop prompt, load your library:

```ocaml
#use "lib/hello.ml";;
```

Now you can call functions from your library:

```ocaml
Hello.greet "OCaml";;
```

## Next Steps

Congratulations on setting up your first OCaml project! Here are some ideas to continue your journey:

1. Modify the `greet` function in `lib/hello.ml` to take multiple names.
2. Add more tests to `test/test_hello.ml`.
3. Create a new function and write tests for it.
4. Explore OCaml libraries and incorporate them into your project.

## Resources

- [Tour of OCaml](https://ocaml.org/docs/tour-of-ocaml): Quick introduction to OCaml's syntax and features
- [OCaml Manual](https://ocaml.org/manual/): Comprehensive guide to OCaml
- [OCaml Standard Library](https://ocaml.org/manual/api/index.html): Documentation for OCaml's standard library
- [Dune Documentation](https://dune.readthedocs.io/): Guide to the Dune build system

## Join the Community

Get involved with the [OCaml community](https://ocaml.org/community)! Find discussion forums, mailing lists, and other ways to connect with OCaml enthusiasts.

Happy coding with OCaml!
