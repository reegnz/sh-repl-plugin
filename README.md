# sh repl plugin

This is an experiment on improving the feedback-loop while building
complex shell pipelines.

## Table of contents

- [Installation](#installation)
- [Usage](#usage)
- [Key bindings](#key-bindings)
- [Demos](#demos)
  - [Interactive jq query construction](#interactive-jq-query-construction)
  - [Insert jq query in the middle of a pipeline](#insert-jq-query-in-the-middle-of-a-pipeline)

## Installation

This plugin requires [fzf](https://github.com/junegunn/fzf) to be available
on your PATH.

The project consists of two components:
- an `sh-repl` command
- an `sh-repl.plugin.zsh` providing line-editor feature using `sh-repl`.


### [zplug](https://github.com/zplug/zplug)

```sh
zplug reegnz/sh-repl-plugin
```

### [Antigen](https://github.com/zsh-users/antigen)

```sh
antigen bundle reegnz/sh-repl-plugin
```

### [Zgen](https://github.com/tarjoilija/zgen)

```sh
zgen load reegnz/sh-repl-plugin
```

## Usage

- type out a command that is the input to your pipeline
- press alt + v and interactively write a filter expression
- press enter, and the expression is appended to your initial command!

## Key bindings

To bring up the JQ query builder, press `alt + v`.

During interactive querying, the following shortcuts can be used:

| Shortcut | Effect |
| ------ | -------- |
| `shift + up` | Scroll up |
| `shift + down` | Scroll down |
| `alt + up` | Scroll up full page |
| `alt + down` | Scroll down full page |
