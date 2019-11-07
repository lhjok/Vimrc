## 我的Vim配置文件

### 安装步骤：

- 安装Vim或Neovim编辑器。
- 安装Vim或Neovim插件管理器。
- 配置好`.vimrc`or`init.vim`文件。
- 安装`.vimrc`or`init.vim`文件的插件。
- 编译YCM自动补全插件。
- 完成Vim和Neovim编辑环境。

### 安装Vim或Neovim插件管理器。

#### Vim

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#### Neovim

```sh
npm install -g neovim
```

```sh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### 配置插件管理器。

#### begin与end之间放插件。

```vim
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
call plug#end()
```

#### 执行插件安装。

```vim
:PlugInstall
```

#### 编译YCM自动补全插件。

- 安装编译环境。

```sh
sudo apt install build-essential cmake python-dev
```

- 开始编译YCM插件`GO模块需要翻墙`。

```sh
cd ~/.vim/plugged/YouCompleteMe
./install.py --clang-completer --clangd-completer --go-completer --ts-completer --rust-completer
```

#### 配置美观编程字体【guifont】二选一。

```vim
set guifont=DejaVu\ Sans\ Mono\ Book\ 13
set guifont=Monospace\ 13
set guifontwide=Microsoft\ YaHei\ 13
```

#### 完成Vim和Neovim编辑环境。
