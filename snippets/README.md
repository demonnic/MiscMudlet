# Mudlet Snippets

I have created a set of snippets for coding Mudlet scripts inside of VSCode, I would like to use [Atomizr](https://atom.io/packages/atomizr) to convert it for atom and sublime text, but have been having problems running it locally (even after removing the comments in the json). I did get it to spit out the output, so have included it as atom.cson

[x]- Coverage for everything the Mudlet editor has code completion for (As of Mudlet 4.4)

[ ]- Coverage for the table.xxxx functions

[ ]- Coverage for the string.xxxx functions

[x]- Coverage for Geyser.xxxx:new() functions

## Usage

### VSCode

Copy the `vscode/*.code-snippets` files you want to include to your code snippets directory. Then the snippets will be available for use in lua files. For me this was:
* Linux: `$HOME/.config/Code/User/snippets/`
* Windows: `%HOME%\AppData\Roaming\Code\User\snippets\`
* OSX: `$HOME/Library/Application Support/Code/User/snippets/`

If you're not familiar, $HOME on linux and osx is typically `/home/<username>`, and on Windows %HOME% is typically `C:\Users\<username>`

### Atom

I don't know... it seems to be "open your snippets file in Atom, copy paste" but I didn't get it working in my brief testing. 

### Sublime Text

I didn't even get the output for this conversion. Maybe we'll get it figured out.
