# Pack N8N - Branch gh-pages

Esta é a branch gh-pages do projeto Pack N8N, que contém os arquivos de build compilados para exibição no GitHub Pages.

## Importante

Esta branch é atualizada automaticamente pelo GitHub Actions ou pelo script de deploy manual. Não faça alterações diretamente nesta branch, pois elas serão sobrescritas na próxima atualização.

## Acesso ao Site

O site pode ser acessado em: [https://costamayssa.github.io/pack_n8n](https://costamayssa.github.io/pack_n8n)

## Processo de Deploy

Esta branch é o resultado do comando `flutter build web --release --base-href /pack_n8n/` e contém os seguintes arquivos importantes:

- `index.html`: Página principal do site
- `logo.png`: Logo utilizada como favicon
- `manifest.json`: Informações para instalação como app no dispositivo móvel
- Arquivos compilados e assets para funcionamento do Flutter Web

## Retornar ao Código Fonte

O código fonte completo está disponível na branch `main` do repositório. 