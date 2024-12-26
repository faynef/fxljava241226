rm -rf ~/.azd
export AZD_IN_CLOUDSHELL=1
export NODE_ENV=dev
mkdir -p ~/bin && curl -fsSL https://aka.ms/install-azd.sh | bash -s -- --install-folder ~/azd --symlink-folder ~/bin
mkdir -p ~/bin && curl -fsSL https://aka.ms/install-azd.sh | bash -s -- --install-folder ~/azd --symlink-folder ~/bin --version 'daily'
azd init -t todo-csharp-cosmos-sql
azd up
azd pipeline config --provider github
git config --global user.name "Xilong Feng(MSFT)"
git config --global user.email "v-xilongfeng@microsoft.com"
