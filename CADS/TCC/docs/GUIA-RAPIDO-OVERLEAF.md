# 🚀 Guia Rápido - Template TCC no Overleaf


## ⚡ Primeiros Passos (5 minutos)

### 1. Configuração Inicial
Abra o arquivo `config.tex` e altere:

```latex
% Suas informações pessoais
\autor{SEU NOME COMPLETO AQUI}
\titulo{TÍTULO DO SEU TCC}
\data{2026}

% Orientador
\orientador{Prof. Dr. Nome do Orientador}
\orientadorfeminino{nao} % mude para 'sim' se necessário

% Co-orientador (OPCIONAL)
\coorientador{} % deixe vazio se não tiver

% Banca
\membrodabancadois{Prof. Dr. Membro 2}
\membrodabancatres{Prof. Dr. Membro 3}
```

### 2. Primeira Compilação
1. No Overleaf, clique em **"Recompile"**
2. Aguarde a compilação (pode demorar na primeira vez)
3. ✅ Se compilou sem erro, você está pronto!

## 📝 Onde Escrever

### Resumo e Abstract
- `elementos-pre-textuais/resumo.tex`
- `elementos-pre-textuais/abstract.tex`

### Capítulos Principais
- `elementos-textuais/introducao.tex` ← Comece aqui!
- `elementos-textuais/fundamentacao-teorica.tex`
- `elementos-textuais/metodologia.tex`
- `elementos-textuais/conclusao.tex`

### Bibliografia
- `elementos-pos-textuais/referencias.bib`

## 🔧 Templates Prontos

### Seção com Subseções
```latex
\section{NOME DA SEÇÃO}
\label{sec:nome-secao}

Texto da seção...

\subsection{Nome da Subseção}
\label{subsec:nome-subsecao}

Texto da subseção...
```

### Figura
```latex
\begin{figure}[htb]
    \centering
    \caption{Título da figura}
    \includegraphics[width=0.8\textwidth]{figuras/sua-figura.png}
    \fonte{Elaborado pelo autor}
    \label{fig:sua-figura}
\end{figure}
```

### Tabela
```latex
\begin{table}[htb]
    \centering
    \caption{Título da tabela}
    \begin{tabular}{|l|c|r|}
        \hline
        \textbf{Coluna 1} & \textbf{Coluna 2} & \textbf{Coluna 3} \\
        \hline
        Dado 1 & Dado 2 & Dado 3 \\
        Dado 4 & Dado 5 & Dado 6 \\
        \hline
    \end{tabular}
    \fonte{Elaborado pelo autor}
    \label{tab:sua-tabela}
\end{table}
```

### Lista de Itens
```latex
\begin{alineas}
    \item Primeiro item
    \item Segundo item
    \item Terceiro item
\end{alineas}
```

### Citação
```latex
% No texto
Conforme \citeonline{AutorAno}, ...
Diversos autores defendem essa ideia \cite{Autor1, Autor2}.

% Na bibliografia (referencias.bib)
@book{AutorAno,
    author = {Sobrenome, Nome},
    title = {Título do Livro},
    publisher = {Editora},
    year = {2023},
}
```

## 🎯 Dicas Essenciais

### ✅ Faça Isso
- Compile frequentemente (a cada mudança importante)
- Use labels descritivos: `\label{fig:arquitetura-sistema}`
- Salve as figuras na pasta `figuras/`
- Use formato PNG/PDF para imagens

### ❌ Evite Isso
- Espaços em nomes de arquivos: `minha figura.png` ❌
- Caracteres especiais não escapados: `&`, `%`, `#`
- Compilar apenas no final (dificulta encontrar erros)

## 🔍 Referências Automáticas

```latex
% Referenciar figuras/tabelas
Como mostra a \autoref{fig:sua-figura}...
Os dados da \autoref{tab:resultados} indicam...

% Referenciar capítulos/seções  
Conforme visto no \autoref{cap:introducao}...
Como explicado na \autoref{sec:metodologia}...
```

## ⚠️ Problemas Comuns

### "Figure/Table not found"
- Verifique se o `\label{}` vem DEPOIS do `\caption{}`
- Compile duas vezes para atualizar referências

### Bibliografia não aparece
- Certifique-se que citou as referências no texto com `\cite{}`
- Verifique sintaxe do arquivo `.bib`

### Imagem não carrega
- Confirme que o arquivo está na pasta `figuras/`
- Use apenas letras, números e hífens no nome do arquivo

## 📊 Elementos Especiais

### Quadro (para texto)
```latex
\begin{quadro}[htb]
    \centering
    \caption{Comparação de metodologias}
    \begin{tabular}{|l|p{8cm}|}
        \hline
        \textbf{Metodologia} & \textbf{Características} \\
        \hline
        Scrum & Metodologia ágil focada em... \\
        \hline
    \end{tabular}
    \fonte{Elaborado pelo autor}
    \label{qua:metodologias}
\end{quadro}
```

### Código
```latex
\begin{lstlisting}[
    language=Python,
    caption={Função de exemplo},
    label={cod:exemplo}
]
def calcular(a, b):
    return a + b
\end{lstlisting}
```

### Sigla (primeira vez)
```latex
% Primeira menção: Application Programming Interface (API)
\gls{API}

% Próximas menções: API
\gls{API}
```

## 🎨 Customização Rápida

### Para Imprimir (sem links coloridos)
No `config.tex`:
```latex
\removerbordasdohyperlink{sim}
\cordohyperlink{nao}
```

### Para Visualização Digital (com links)
```latex
\removerbordasdohyperlink{nao}
\cordohyperlink{sim}
```

## 📋 Checklist Final

Antes de entregar:
- [ ] Todas as informações em `config.tex` estão corretas
- [ ] Resumo e abstract escritos
- [ ] Todas as figuras têm fonte e legenda
- [ ] Bibliografia completa e formatada
- [ ] Compilação sem erros
- [ ] PDF gerado corretamente

---

💡 **Dica Final**: Comece escrevendo na Introdução e vá adicionando conteúdo aos poucos. O template já cuida da formatação ABNT automaticamente!


---
> 🤖 **Documentação gerada por IA**: Este conteúdo foi criado automaticamente usando inteligência artificial para facilitar o uso do template LaTeX no Overleaf.