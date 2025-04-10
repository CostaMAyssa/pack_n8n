#!/bin/bash

# Verificar se o git está instalado
if ! [ -x "$(command -v git)" ]; then
  echo 'Erro: git não está instalado.' >&2
  exit 1
fi

# Verificar se o Flutter está instalado
if ! [ -x "$(command -v flutter)" ]; then
  echo 'Erro: flutter não está instalado.' >&2
  exit 1
fi

# Habilitar web
flutter config --enable-web

# Atualizar dependências
flutter pub get

# Limpar builds anteriores
rm -rf build/web

# Construir para web com a base href correta
flutter build web --release --base-href /pack_n8n/

# Copiar a logo para a pasta de build
cp web/logo.png build/web/

# Entrar na pasta de build
cd build/web

# Inicializar repositório git
git init
git checkout -b gh-pages

# Adicionar todos os arquivos
git add .

# Commit
git commit -m "Deploy to GitHub Pages"

# Adicionar o remote correto
echo "Agora execute os seguintes comandos manualmente:"
echo "cd build/web"
echo "git remote add origin https://github.com/CostaMAyssa/pack_n8n.git"
echo "git push -f origin gh-pages"

echo "Deploy concluído! Acesse https://costamayssa.github.io/pack_n8n em alguns minutos." 