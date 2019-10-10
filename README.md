## 我的Vim配置文件

### 安装步骤：

- 安装Vim编辑器。
- 安装Vim插件管理器。
- 配置好.vimrc文件。
- 安装.vimrc文件的插件。
- 编译YCM自动补全插件。
- 完成Vim编辑环境。

### 安装Vim插件管理器。

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
### 配置插件管理器。

#### begin与end之间放插件。

```vim
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
call plug#end()
```

#### 安装.vimrc的插件。

```vim
:PlugInstall
```

#### 编译YCM自动补全插件。

- 安装编译环境。

```sh
sudo apt install build-essential cmake python-dev
```

- 开始编译YCM插件。

```sh
cd ~/.vim/plugged/YouCompleteMe
./install.py --clang-completer --clangd-completer --ts-completer --rust-completer
```

#### 完成Vim编辑环境。