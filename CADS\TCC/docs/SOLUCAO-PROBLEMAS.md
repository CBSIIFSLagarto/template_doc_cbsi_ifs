# 🔧 Solução de Problemas - Template TCC



## ❗ Problemas de Compilação

### Erro: "File not found"

**Sintomas:**
```
! LaTeX Error: File `lib/preambulo.tex' not found.
! LaTeX Error: File `config.tex' not found.
```

**Soluções:**
1. ✅ Verifique se todos os arquivos foram importados corretamente
2. ✅ Confirme que a estrutura de pastas está preservada
3. ✅ No Overleaf, verifique se `documento.tex` está definido como arquivo principal
4. ✅ Reimporte o projeto se necessário

### Erro: "Missing \begin{document}"

**Sintomas:**
```
! LaTeX Error: Missing \begin{document}.
```

**Soluções:**
1. ✅ Certifique-se de compilar `documento.tex` (não outros arquivos)
2. ✅ Verifique se não há caracteres especiais antes do `\documentclass`
3. ✅ Confirme que `lib/preambulo.tex` existe e está correto

### Erro: "Package babel Error"

**Sintomas:**
```
! Package babel Error: Unknown option `brazil'.
```

**Soluções:**
1. ✅ No Overleaf: Menu → Settings → Compiler → pdfLaTeX
2. ✅ Aguarde alguns segundos e tente novamente
3. ✅ Se persistir, use XeLaTeX como compilador

### Erro de Timeout na Compilação

**Sintomas:**
- Compilação para sem concluir
- Mensagem de tempo limite excedido

**Soluções:**
1. ✅ Menu → Settings → Compile timeout → 60 segundos
2. ✅ Remova temporariamente figuras grandes
3. ✅ Comente seções com muito conteúdo para testar
4. ✅ Considere conta premium do Overleaf

---

## 📚 Problemas de Bibliografia

### Referencias não aparecem

**Sintomas:**
- Lista de referências vazia
- Citações aparecem como [?]

**Soluções:**
1. ✅ Certifique-se de que citou as referências no texto com `\cite{}`
2. ✅ Verifique sintaxe do arquivo `.bib`:
   ```bibtex
   @article{chave2023,
       author = {Autor, Nome},
       title = {Título},
       journal = {Revista},
       year = {2023},
   }
   ```
3. ✅ Compile 2-3 vezes consecutivas
4. ✅ Verifique se há caracteres especiais não escapados

### Erro de sintaxe no .bib

**Sintomas:**
```
! Argument of \@citex has an extra }.
```

**Soluções:**
1. ✅ Verifique chaves balanceadas `{}`
2. ✅ Use aspas duplas para acentos: `title = {"Educação"}` 
3. ✅ Escape caracteres especiais: `\&`, `\%`, `\#`
4. ✅ Remova linhas em branco dentro das entradas

### Citações com formato incorreto

**Sintomas:**
- Citações não seguem padrão ABNT
- Números em vez de autor-data

**Verificações:**
1. ✅ O template usa sistema numérico ABNT (correto)
2. ✅ Para autor-data, use `\citeonline{}`
3. ✅ Para citação numérica, use `\cite{}`

---

## 🖼️ Problemas com Figuras

### Figura não aparece

**Sintomas:**
- Espaço em branco onde deveria estar a figura
- Warning: "File not found"

**Soluções:**
1. ✅ Verifique se o arquivo da imagem foi enviado para a pasta `figuras/`
2. ✅ Confirme o nome do arquivo (sem espaços ou acentos)
3. ✅ Use apenas: PNG, PDF, JPG
4. ✅ Exemplo correto:
   ```latex
   \includegraphics[width=0.8\textwidth]{figuras/minha-figura.png}
   ```

### Figura em posição incorreta

**Sintomas:**
- Figura aparece longe do texto que a referencia
- Muitas páginas em branco

**Soluções:**
1. ✅ Use posicionamento flexível: `\begin{figure}[htb]`
2. ✅ Para forçar posição: `\begin{figure}[H]` (precisa `\usepackage{float}`)
3. ✅ Reduza tamanho: `width=0.6\textwidth`
4. ✅ Evite figuras muito grandes

### Legenda incorreta

**Sintomas:**
- "Figure" em vez de "Figura"
- Numeração errada

**Verificações:**
1. ✅ Use `\caption{}` antes de `\label{}`
2. ✅ O template já configura nomes em português
3. ✅ Para referência: `\autoref{fig:nome}`

---

## 📊 Problemas com Tabelas

### Tabela não se ajusta à página

**Sintomas:**
- Tabela ultrapassa margem direita
- Texto cortado

**Soluções:**
1. ✅ Use `p{Xcm}` para colunas de texto:
   ```latex
   \begin{tabular}{|l|p{6cm}|c|}
   ```
2. ✅ Para tabelas grandes:
   ```latex
   \begin{adjustbox}{width=\textwidth,center}
   \begin{tabular}{...}
   ...
   \end{tabular}
   \end{adjustbox}
   ```
3. ✅ Considere dividir em múltiplas tabelas
4. ✅ Use fonte menor: `\footnotesize`

### Linhas da tabela não funcionam

**Sintomas:**
- Linhas não aparecem
- Erro de compilação

**Soluções:**
1. ✅ Verifique sintaxe das linhas:
   ```latex
   \hline        % Linha horizontal completa
   \cline{2-4}   % Linha nas colunas 2 a 4
   ```
2. ✅ Confirme número de colunas em `\begin{tabular}{|c|c|c|}`
3. ✅ Use `&` para separar colunas e `\\` para nova linha

---

## 🏷️ Problemas com Siglas e Glossário

### Siglas não aparecem por extenso

**Sintomas:**
- Primeira ocorrência mostra apenas a sigla
- Lista de siglas vazia

**Soluções:**
1. ✅ Use `\glsresetall` no início de cada capítulo
2. ✅ Compile múltiplas vezes para gerar glossário
3. ✅ Verifique se as siglas estão definidas em `lista-de-abreviaturas-e-siglas.tex`
4. ✅ Exemplo correto:
   ```latex
   \newacronym{ML}{ML}{Machine Learning}
   % No texto
   \gls{ML}  % Primeira vez: Machine Learning (ML)
   \gls{ML}  % Depois: ML
   ```

### Lista de siglas não é gerada

**Sintomas:**
- Página de lista de siglas em branco
- Comando não reconhecido

**Soluções:**
1. ✅ Certifique-se de usar `\gls{}` no texto
2. ✅ O Overleaf compila automaticamente, aguarde
3. ✅ Se necessário, force recompilação completa
4. ✅ Verifique se há siglas definidas

---

## 📝 Problemas de Formatação

### Espaçamento incorreto

**Sintomas:**
- Espaçamento duplo em vez de 1,5
- Parágrafos sem indentação
- Margens incorretas

**Verificações:**
1. ✅ O template já configura espaçamento 1,5 (ABNT)
2. ✅ Não modifique `lib/ifs.sty` sem conhecimento
3. ✅ Para texto sem recuo: `\noindent`

### Capítulos não aparecem no sumário

**Sintomas:**
- Sumário vazio ou incompleto
- Numeração errada

**Soluções:**
1. ✅ Use `\chapter{}`, `\section{}`, `\subsection{}`
2. ✅ Compile múltiplas vezes
3. ✅ Verifique se não há comandos especiais antes dos títulos

### Números de página incorretos

**Sintomas:**
- Numeração errada
- Páginas sem número

**Verificações:**
1. ✅ O template gerencia numeração automaticamente
2. ✅ Pré-textuais: algarismos romanos
3. ✅ Textuais: algarismos arábicos
4. ✅ Não modifique comandos de página

---

## 🔍 Problemas de Referências Cruzadas

### Referencias aparecem como ??

**Sintomas:**
- `\autoref{fig:exemplo}` mostra "Figura ??"
- `\autoref{cap:intro}` mostra "Capítulo ??"

**Soluções:**
1. ✅ Verifique se o `\label{}` existe e está correto
2. ✅ `\label{}` deve vir APÓS `\caption{}`:
   ```latex
   \caption{Legenda}
   \label{fig:nome}
   ```
3. ✅ Compile 2-3 vezes
4. ✅ Use nomes únicos para labels

### Referencias com texto incorreto

**Sintomas:**
- "Section" em vez de "Seção"
- Links não funcionam

**Soluções:**
1. ✅ Use `\autoref{}` em vez de `\ref{}`
2. ✅ O template configura nomes em português
3. ✅ Para forçar nome: `A \autoref{fig:teste} mostra...`

---

## 💻 Problemas de Código

### Código não aparece formatado

**Sintomas:**
- Código aparece como texto normal
- Sem destaque de sintaxe

**Soluções:**
1. ✅ Use ambiente `lstlisting`:
   ```latex
   \begin{lstlisting}[language=Python]
   def exemplo():
       return "Hello World"
   \end{lstlisting}
   ```
2. ✅ Para código inline: `\lstinline{codigo}`
3. ✅ Linguagens suportadas: Python, Java, C, SQL, etc.

### Código com caracteres especiais

**Sintomas:**
- Erro de compilação com código
- Caracteres estranhos

**Soluções:**
1. ✅ Configure encoding UTF-8
2. ✅ Para caracteres especiais no código:
   ```latex
   \lstset{
       inputencoding=utf8,
       extendedchars=true,
       literate={ã}{{\~a}}1 {ç}{{\c{c}}}1
   }
   ```

---

## 🌐 Problemas no Overleaf

### Projeto não sincroniza

**Sintomas:**
- Mudanças não são salvas
- Erro de conexão

**Soluções:**
1. ✅ Verifique conexão com internet
2. ✅ Recarregue a página
3. ✅ Faça backup (Download → Source)
4. ✅ Entre em contato com suporte do Overleaf

### Performance lenta

**Sintomas:**
- Compilação muito demorada
- Interface travando

**Soluções:**
1. ✅ Reduza tamanho de imagens
2. ✅ Use conta premium para melhor performance
3. ✅ Remova arquivos não utilizados
4. ✅ Divida documento em partes menores

### Erro de permissão

**Sintomas:**
- Não consegue editar arquivos
- "Read-only" mode

**Soluções:**
1. ✅ Certifique-se de ter permissão de escrita
2. ✅ Se foi projeto compartilhado, peça acesso
3. ✅ Faça uma cópia do projeto

---

## 🆘 Quando Nada Funciona

### Reset Completo

1. **Backup**: Download → Source (ZIP)
2. **Novo projeto**: New Project → Upload Project
3. **Reimporte**: Todos os arquivos
4. **Configure**: Arquivo principal como `documento.tex`
5. **Teste**: Compile o projeto básico

### Documentação Mínima para Teste

Crie um arquivo simples para testar:

```latex
\documentclass[12pt,oneside,a4paper,brazil]{abntex2}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[brazil]{babel}

\titulo{Teste}
\autor{Autor}
\data{2024}
\local{Local}

\begin{document}
\imprimircapa
\chapter{Introdução}
Este é um teste.
\end{document}
```

### Contatos para Suporte

1. **Overleaf**: support@overleaf.com
2. **abnTeX2**: [Site oficial](https://www.abntex.net.br/)
3. **Comunidade LaTeX**: Stack Overflow, grupos Facebook
4. **Template IFS**: Francisco Rodrigues (mantenedor)

---

## ⚡ Dicas de Prevenção

### Boas Práticas

1. ✅ **Compile frequentemente** (a cada seção escrita)
2. ✅ **Faça backup regular** (Download → Source)
3. ✅ **Use nomes simples** para arquivos e labels
4. ✅ **Teste mudanças grandes** em projeto separado
5. ✅ **Mantenha organização** de arquivos e pastas

### Workflow Recomendado

1. **Configurar** projeto base
2. **Testar** compilação básica
3. **Adicionar conteúdo** gradualmente
4. **Compilar** após cada adição
5. **Fazer backup** antes de grandes mudanças

### Comandos para Debug

```latex
% Para ver warnings
\listfiles

% Para debugging de referências
\usepackage{showkeys}

% Para ver layout da página
\usepackage[showframe]{geometry}
```

---

💡 **Lembre-se**: A maioria dos problemas tem soluções simples. Compile frequentemente, mantenha backups e não hesite em recomeçar se necessário!

---
> 🤖 **Documentação gerada por IA**: Este conteúdo foi criado automaticamente usando inteligência artificial para facilitar o uso do template LaTeX no Overleaf.