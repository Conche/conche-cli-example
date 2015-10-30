# Conche CLI Example

This repository is a small example command line interface using the Conche
build system. It was mostly generated via `conche init`.

```shell
$ conche init Hello --with-cli --with-tests
```

## Usage

This example provides a command called `hello` which can output Hello World
or Hello and some given names.

```shell
$ hello
Hello World

$ hello Kyle
Hello Kyle

$ hello Kyle Katie
Hello Kyle and Katie
```

### Installation

Using Conche, the example can be installed using `conche install`.

```shell
$ conche install
```

By default, it will install the tool into `/usr/local`, you can pass in a
custom destination using `--prefix`.

```shell
$ conche install --prefix /usr/local/Cellar/hello/HEAD
```

### Running the tests

```shell
$ conche test
```

### Running `hello` without installing

You can use `conche` to build and run the `hello` example without
installing it to your system as follows:

```shell
$ conche build
$ conche exec hello
```
