# Presentinho para Sophia

Site estático simples criado por Rodrigo para Sophia. Este repositório contém `index.html` e `styles.css` (além de um workflow para publicar no GitHub Pages).

Atenção: o GitHub Pages publicado a partir deste repositório ficará público mesmo que o repositório seja privado. Se você precisa de controle de acesso, prefira uma hospedagem com proteção por senha ou um servidor próprio.

## Publicar no GitHub Pages (passos rápidos - PowerShell)
1. Crie um repositório novo no GitHub (pode ser privado). Copie a URL do repositório (HTTPS).

2. No PowerShell, dentro da pasta `e:\projetopessoal` execute:

```powershell
# inicializar git (se ainda não estiver)
git init
git add .
git commit -m "Initial commit: site para Sophia"
# Garanta que a branch se chama main
git branch -M main
# adicione o remote (substitua <USER> e <REPO>)
git remote add origin https://github.com/<USER>/<REPO>.git
# envie para o GitHub
git push -u origin main
```

3. O workflow ` .github/workflows/deploy.yml ` acionará automaticamente e publicará o conteúdo na Pages.

4. Após alguns minutos, a URL do site deverá ser:

```
https://<USER>.github.io/<REPO>/
```

Verifique a aba "Pages" nas configurações do repositório para confirmar o endereço.

## Observações
- Se quiser que eu gere um README com os comandos preenchidos (substituindo `<USER>` e `<REPO>`), me diga seu usuário e nome do repo que eu já atualizo aqui.
- Se preferir gerar o QR sem depender da API pública, eu também posso embutir um gerador de QR local no site.
- Para compartilhar rapidamente sem publicar, outra opção é rodar um servidor local e usar ngrok (túnel). Se quiser, eu te mostro os passos.

Boa sorte — me avisa quando fizer o push que eu te ajudo a checar o Pages online.