# Django Aupi Boilerplate

Backend e backoffce do projeto estudo fácil

## PREREQUISITES
- install [github CLI](https://cli.github.com/)
- Install pyenv dependencies:
```bash
sudo apt install libreadline-dev libsqlite3-dev libffi-dev libncurses5-dev zlib1g zlib1g-dev lzma liblzma-dev libbz2-dev libssl-dev python3-tk libpq-dev graphviz-dev
```
- Install python env with.
```bash
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
```

- Edit  ~/.bashrc and add following lines on the end of file, after that reload bash
```bash
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
```

- Install Python 3.10 via PyEnvo
```bash
pyenv install 3.10
```
- Create pyenv venv and run it
```bash
pyenv shell 3.10
```
- Install poetry
```bash
curl -sSL https://install.python-poetry.org | python3 -
```
- Add to path poetry

## RUN PROJECT

On Dev mode if you need to run Postgres and PdAdmin in docker run first

```bash
make devdb
```

On first run use commands bellow
```bash
pyenv shell 3.10
poetry install
make lint
cp .env.example .env
make runserver
```

After just run:
```bash
make runserver
```

## Important Make Commands

Na primeira vez:
```bash
pyenv shell 3.10
poetry install
cp .env.example .env
make rundb
make migrate
make runserver
```
Depois:
```bash
pyenv shell 3.10
poetry install
make rundb
make runserver
```
```

More commands take a look om Makefile


## HOW TO COMMIT
- git checkout main
- git pull
- git branch <your_beautiful_branch_name>
- git checkout <your_beautiful_branch_name>
- ... a lot of code...
- git add .
- git commit -m [<message_using_conventional_commits> ](https://www.conventionalcommits.org/en/v1.0.0/)
- git push origin <your_beautiful_branch_name>
- gh pr create -f
- win

## CODE FORMATTERS

We are using black, flake8 and isort.
So, you should run make lint to enable pre-commit hooks and use black as default formatter in vscode!


## Instruções do Docker de Produção e CERTBOT
Para colocar em produção, na primeira execução é necessário fazer a criação do SSL do letsencrypt. O passi inical é validar se o certbot está rodando, para isso rode:
`sudo docker-compose -f docker-compose-ssl-init.yml run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ --dry-run -d NOMEDODOMINIO.COM.BR`

Tendo sucesso nesta operação pode rodar o primeiro certificado com o comando:
`sudo docker-compose -f docker-compose-ssl-init.yml run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d NOMEDODOMINIO.COM.BR`

TODO: Renovar o certbot



# Deploy Infra

Criar EC2 ubunto 22.04
Instalar git e docker
`sudo apt install docker-compose`

atribuir IP elático

clonar repositorio
clonar repositoriod e pgadmin
conetar no banco




Criar RDS
- 

Criar S3
Fazer chave de acesos no S3

Criar arquivo .env com S3 e etc.