# Matriz de Competências — Publicação via GitHub Pages

Este repositório publica um arquivo HTML estático (a matriz interativa) no GitHub Pages usando **GitHub Actions**.

## Como publicar

### Opção A — Pelo navegador (UI do GitHub)
1. Crie um repositório público novo no seu GitHub (ex.: `matriz-competencias`).
2. Faça **upload** de **todos** os arquivos desta pasta (incluindo `.github/workflows/pages.yml` e `index.html`) para o repositório, na branch **main**.
3. Vá em **Actions** e habilite os workflows, se solicitado.
4. Aguarde o workflow **Deploy to GitHub Pages** finalizar com sucesso.
5. O site ficará disponível em:  
   `https://SEU_USUARIO.github.io/NOME_DO_REPOSITORIO/`

### Opção B — Em um comando com GitHub CLI
Pré-requisito: [GitHub CLI (gh)](https://cli.github.com/) instalado e autenticado (`gh auth login`).

```bash
# Dentro da pasta descompactada deste pacote:
bash deploy.sh
```

O script criará o repositório público, fará o push e acionará o deploy automático.
A URL final será: `https://SEU_USUARIO.github.io/matriz-competencias/` (ajuste o nome no script, se quiser).

## Incorporar no Notion
No Notion, use **/embed** e cole a URL do site (ex.: `https://SEU_USUARIO.github.io/matriz-competencias/`). 
A matriz aparecerá incorporada e interativa.
