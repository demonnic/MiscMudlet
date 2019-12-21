# Mudlet Snippets

I have created a set of snippets for coding Mudlet scripts inside of VSCode, I would like to use [Atomizr](https://atom.io/packages/atomizr) to convert it for atom and sublime text, but have been having problems running it locally (even after removing the comments in the json)

[x]- Coverage for everything the Mudlet editor has code completion for

[ ]- Coverage for the table.xxxx functions

[ ]- Coverage for the string.xxxx functions

[ ]- Coverage for Geyser.xxxx:new() functions

## Usage

### VSCode

Copy the mudlet.code-snippets to your code snippets directory. Then the snippets will be available for use in lua files. For me this was:
* Linux: `$HOME/.config/Code/User/snippets`
* Windows: `%HOME%\AppData\Roaming\Code\User\snippets\lua.json`
* OSX: `$HOME/Library/Application Support/Code/User/snippets/`

If you're not familiar, $HOME on linux and osx is typically `/home/<username>`, and on Windows %HOME% is typically `C:\Users\<username>`
