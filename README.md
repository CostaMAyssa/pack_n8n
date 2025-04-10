# Pack N8N

Pacote digital de recursos para criadores de conteúdo.

## Funcionalidades

- Catálogo de recursos digitais
- Interface responsiva para web e dispositivos móveis
- Design moderno e amigável

## Instalação

```bash
# Clone o repositório
git clone https://github.com/CostaMAyssa/pack_n8n.git

# Entre na pasta do projeto
cd pack_n8n

# Instale as dependências
flutter pub get

# Execute o projeto
flutter run -d chrome
```

## Deploy para GitHub Pages

### Opção 1: Usando GitHub Actions (Automático)

1. Faça um push para a branch `main` do seu repositório
2. O GitHub Actions vai automaticamente fazer build e deploy para a branch `gh-pages`
3. Acesse seu site em: `https://costamayssa.github.io/pack_n8n`

### Opção 2: Deploy Manual

Execute o script de deploy incluído no projeto:

```bash
# Torne o script executável
chmod +x deploy.sh

# Execute o script
./deploy.sh
```

Siga as instruções exibidas no terminal para completar o processo de deploy.

## Configuração da Base URL

Para que o site funcione corretamente no GitHub Pages, o build é feito com a opção `--base-href /pack_n8n/`. Se você estiver hospedando em outro domínio ou subdiretório, altere essa opção no script de deploy ou no arquivo de workflow do GitHub Actions.

## Licença

[MIT](LICENSE)
