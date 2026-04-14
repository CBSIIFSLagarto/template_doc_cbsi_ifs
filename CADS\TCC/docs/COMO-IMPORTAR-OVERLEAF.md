# 📤 Como Importar o Template no Overleaf

## 🎯 Método 1: Upload de Arquivos (Recomendado)

### Passo 1: Preparar os Arquivos
1. Faça o download de todos os arquivos do template
2. **Importante**: Mantenha a estrutura de pastas exatamente como está
3. Se os arquivos estão em um ZIP, extraia primeiro

### Passo 2: Criar Projeto no Overleaf
1. Acesse [overleaf.com](https://www.overleaf.com)
2. Clique em **"New Project"**
3. Selecione **"Upload Project"**
4. Faça upload do arquivo ZIP OU selecione todos os arquivos e pastas

### Passo 3: Verificar Estrutura
Após o upload, confirme que a estrutura está assim:
```
📁 Projeto
├── 📄 documento.tex
├── 📄 config.tex
├── 📂 lib/
│   ├── preambulo.tex
│   ├── ifs.sty
│   └── macros.tex
├── 📂 elementos-pre-textuais/
├── 📂 elementos-textuais/
├── 📂 elementos-pos-textuais/
└── 📂 figuras/
```

### Passo 4: Primeira Compilação
1. Certifique-se que `documento.tex` está selecionado como arquivo principal
2. Clique em **"Recompile"**
3. ⏱️ A primeira compilação pode demorar 1-2 minutos
4. ✅ Se aparecer o PDF, está funcionando!

---

## 🎯 Método 2: Git/GitHub (Avançado)

Se o template estiver em um repositório Git:

### Passo 1: No Overleaf
1. **New Project** → **Import from GitHub**
2. Conecte sua conta GitHub se necessário
3. Selecione o repositório do template

### Passo 2: Configurar
1. O Overleaf sincronizará automaticamente
2. Primeira compilação pode demorar
3. Edite normalmente

---

## ⚙️ Configurações Importantes

### Definir Arquivo Principal
Se o Overleaf não detectar automaticamente:
1. Clique no **ícone de menu** (três linhas) no topo esquerdo
2. **Settings** → **Main document**
3. Selecione: `documento.tex`

### Configurar Compilador
Para melhor compatibilidade:
1. **Menu** → **Settings** → **Compiler**
2. Selecione: **pdfLaTeX** (recomendado) ou **XeLaTeX**

### Timeout de Compilação
Se a compilação for lenta:
1. **Menu** → **Settings** → **Compile timeout**
2. Aumente para **60 segundos**

---

## 🔧 Primeiros Ajustes

### 1. Teste Básico
Após importar, edite o arquivo `config.tex`:
```latex
\autor{SEU NOME DE TESTE}
```
Compile para verificar se funciona.

### 2. Upload de Figuras
1. Crie/verifique a pasta `figuras/`
2. Faça upload de suas imagens aqui
3. Formatos recomendados: PNG, PDF, JPG

### 3. Configurar Bibliografia
1. Edite `elementos-pos-textuais/referencias.bib`
2. Adicione suas primeiras referências
3. Compile para testar

---

## ❗ Problemas Comuns

### "Arquivo Principal Não Encontrado"
**Solução**: 
- Menu → Settings → Main document
- Selecione `documento.tex`

### "Erro de Compilação"
**Verificações**:
1. Todos os arquivos foram importados?
2. A estrutura de pastas está correta?
3. O arquivo `lib/preambulo.tex` existe?

### "Tempo Limite Excedido"
**Soluções**:
1. Aumente o timeout (Settings → Compile timeout)
2. Remova temporariamente conteúdo complexo
3. Use conta premium do Overleaf (compilação mais rápida)

### "Imagens Não Aparecem"
**Verificações**:
1. Arquivos de imagem foram enviados?
2. Estão na pasta `figuras/`?
3. Nomes sem espaços ou caracteres especiais?

---

## 🎨 Personalização Pós-Import

### 1. Adaptar para Sua Instituição
Edite `config.tex`:
```latex
\ies{Sua Universidade}
\centro{Seu Centro/Campus}
\graduacaoem{Seu Curso}
```

### 2. Remover Exemplos
Se quiser começar limpo:
- Apague conteúdo de exemplo dos arquivos em `elementos-textuais/`
- Mantenha apenas as estruturas de capítulos

### 3. Adicionar Logos
1. Upload da logo da instituição para `figuras/`
2. Edite `lib/ifs.sty` se necessário para personalizar capas

---

## 📊 Verificação Final

### Checklist Pós-Import:
- [ ] Projeto compila sem erros
- [ ] PDF é gerado corretamente
- [ ] Capa mostra informações corretas
- [ ] Sumário é gerado automaticamente
- [ ] Bibliografia aparece (mesmo que vazia)
- [ ] Listas (figuras, tabelas) são criadas

### Se Algo Não Funcionar:
1. **Recompile** 2-3 vezes (referências cruzadas)
2. Verifique **Logs** para erros específicos
3. Compare estrutura com template original
4. Teste com exemplo mínimo primeiro

---

## 🚀 Pronto para Começar!

Após a importação bem-sucedida:
1. ✏️ Edite `config.tex` com suas informações
2. 📝 Comece escrevendo em `elementos-textuais/introducao.tex`
3. 📚 Adicione referências em `referencias.bib`
4. 🖼️ Faça upload de figuras conforme necessário

**💡 Dica**: Mantenha sempre um backup do projeto (Download → Source como ZIP)

**🔄 Sincronização**: Se usar GitHub, configure Git para manter tudo sincronizado entre Overleaf e seu repositório.

---

**Tempo estimado total**: 10-15 minutos para import completo e primeira compilação ✅


---
> 🤖 **Documentação gerada por IA**: Este conteúdo foi criado automaticamente usando inteligência artificial para facilitar o uso do template LaTeX no Overleaf.