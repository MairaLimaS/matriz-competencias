#!/usr/bin/env bash
set -euo pipefail

# Ajuste estes valores antes de rodar:
GITHUB_USER="SEU_USUARIO_GITHUB"
REPO_NAME="matriz-competencias"

# Verificações básicas
if ! command -v gh >/dev/null 2>&1 ; then
  echo "❌ GitHub CLI (gh) não encontrado. Instale em https://cli.github.com/"
  exit 1
fi

if ! gh auth status >/dev/null 2>&1 ; then
  echo "❌ Você precisa autenticar o gh:  gh auth login"
  exit 1
fi

# Inicializa git e faz primeiro commit
git init -b main
git add .
git commit -m "Initial commit: Matriz de Competências (GitHub Pages)"

# Cria o repositório remoto público e faz o push
gh repo create "$GITHUB_USER/$REPO_NAME" --public --source=. --remote=origin --push

echo ""
echo "✅ Repositório criado e publicado!"
echo "➡ Acompanhe o deploy em: https://github.com/$GITHUB_USER/$REPO_NAME/actions"
echo "🌐 Quando finalizar, acesse: https://$GITHUB_USER.github.io/$REPO_NAME/"
echo ""
echo "Dica: use essa URL para incorporar no Notion via /embed."
