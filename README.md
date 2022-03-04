## alias反映
```
rm ~/.bash_aliases
ln -s bash_aliases ~/.bash_aliases
```

## vim設定反映
```
rm ~/.vimrc
ln -s vimrc ~/.vimrc
mv ~/.vim ./vim_original
cp -rf Settings/vim ~/.vim


vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
```

### 導入プラグイン
* nerdtree

*

### コードジャンプ
```
sudo apt install ctags
ctags -R --languages=ruby
