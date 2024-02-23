# Prerequisites

### Key

This key is the same as used in the Vim docs

- `<key>`: Key with special name
- `<C-key>`: CTRL+key
- `<S-key>`: Shift+key (only used for special characters)
- `<A-key>`: ALT+key
- `<CR>`: Enter key
- `{thing}`: Required
- `[thing]`: Optional

### Installation

#### Vim
```bash
sudo apt-get update && sudo apt-get install vim
```

#### NodeJS
```bash
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=18
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-get update && sudo apt-get install nodejs -y
```

#### Yarn
```bash
sudo apt-get install yarn
```

#### TSServer
```bash
npm i typescript-language-server
```
