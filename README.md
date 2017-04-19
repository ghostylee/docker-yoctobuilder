# docker-yoctobuilder
yocto build environment based on ubuntu 16.04
## How to use
```
cd $PROJECT_ROOT
```

```
docker run -it --rm -v $PWD:/home/worker/building ghostylee/docker-yoctobuilder
```

or set alias for

bash
```
echo "alias yoctobuilder='docker run -it --rm -v \$PWD:/home/worker/building ghostylee/docker-yoctobuilder'" >> ~/.bashrc
```
zsh
```
echo "alias yoctobuilder='docker run -it --rm -v \$PWD:/home/worker/building ghostylee/docker-yoctobuilder'" >> ~/.zshrc
```
fish
```
echo "alias yoctobuilder='docker run -it --rm -v \$PWD:/home/worker/building ghostylee/docker-yoctobuilder'" >> ~/.config/fish/config.fish
```
then run

```yoctobuilder```
