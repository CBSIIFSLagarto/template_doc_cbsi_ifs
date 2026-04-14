# Template LaTeX para TCC - Instituto Federal de Sergipe (IFS)

## Visão Geral

Este template foi desenvolvido para a elaboração de Trabalhos de Conclusão de Curso (TCCs) do Instituto Federal de Educação, Ciência e Tecnologia de Sergipe (IFS). Baseado na customização do abnTeX2 seguindo as normas da ABNT NBR 14724:2011 e diretrizes institucionais específicas.

### Características Principais
- ✅ Baseado no abnTeX2 (versão mais robusta para trabalhos acadêmicos brasileiros)
- ✅ Formatação automática conforme ABNT NBR 14724:2011
- ✅ Suporte completo para citações (ABNT NBR 10520:2023 e NBR 6023:2018)
- ✅ Estrutura modular para facilitar a organização
- ✅ Sistema automatizado de listas (figuras, tabelas, códigos, algoritmos)
- ✅ Glossário e lista de siglas integrados
- ✅ Compatível com Overleaf

## Como usar no Overleaf

### 1. Importação do Projeto
1. Faça o upload de todos os arquivos para o Overleaf
2. Certifique-se de que a estrutura de pastas está preservada
3. Compile o arquivo principal `documento.tex`

### 2. Configuração Inicial
O primeiro passo é editar o arquivo `config.tex` com suas informações:

```latex
% Tipo de trabalho: tccgraduacao, tccespecializacao, dissertacao, tese
\trabalhoacademico{tccgraduacao}

% Define se é qualificação (nao = versão final)
\ehqualificacao{nao}

% Informações do projeto
\autor{Seu Nome Completo}
\titulo{Título do Seu Trabalho}
\data{2026}
\local{Aracaju - Sergipe}

% Informações da instituição
\ies{Instituto Federal de Educação, Ciência e Tecnologia}
\centro{\textit{Campus} Aracaju}
\graduacaoem{Análise e Desenvolvimento de Sistemas}

% Orientador
\orientador{Prof. Dr. Nome do Orientador}
\orientadories{Instituição do Orientador}
\orientadorfeminino{nao} % sim se for feminino

% Co-orientador (opcional - deixe vazio {} para remover)
\coorientador{Prof. Dr. Nome do Co-orientador}

% Banca examinadora
\membrodabancadois{Prof. Dr. Membro 2}
\membrodabancatres{Prof. Dr. Membro 3}
\membrodabancaquatro{} % opcional
```

## Estrutura do Projeto

```
├── documento.tex              # Arquivo principal
├── config.tex                # Configurações do trabalho
├── lib/
│   ├── preambulo.tex         # Pacotes e configurações LaTeX
│   ├── ifs.sty               # Estilo específico do IFS
│   └── macros.tex            # Macros personalizados
├── elementos-pre-textuais/
│   ├── resumo.tex
│   ├── abstract.tex
│   ├── agradecimentos.tex
│   ├── dedicatoria.tex
│   ├── epigrafe.tex
│   └── lista-de-abreviaturas-e-siglas.tex
├── elementos-textuais/
│   ├── introducao.tex
│   ├── fundamentacao-teorica.tex
│   ├── metodologia.tex
│   ├── cronograma.tex
│   └── conclusao.tex
└── elementos-pos-textuais/
    ├── referencias.bib      # Bibliografia
    ├── glossario.tex       # Definições do glossário
    ├── anexos/
    └── apendices/
```

## Editando o Conteúdo

### 1. Elementos Pré-textuais
Edite os arquivos na pasta `elementos-pre-textuais/`:

**Resumo** (`resumo.tex`):
```latex
\lipsum[1] % Substitua pelo seu resumo

\textbf{Palavras-chave:} Palavra 1. Palavra 2. Palavra 3.
```

**Abstract** (`abstract.tex`):
```latex
\lipsum[1] % Substitua pelo seu abstract em inglês

\textbf{Keywords:} Keyword 1. Keyword 2. Keyword 3.
```

### 2. Elementos Textuais
Os capítulos principais estão em `elementos-textuais/`:

**Introdução** (`introducao.tex`):
```latex
\chapter{INTRODUÇÃO}
\label{cap:introducao}

Seu texto aqui...

\section{JUSTIFICATIVA}
\label{sec:justificativa}

\section{OBJETIVOS}
\label{sec:objetivos}

\subsection{OBJETIVO GERAL}
Desenvolver...

\subsection{OBJETIVOS ESPECÍFICOS}
\begin{alineas}
    \item Realizar...
    \item Investigar...
\end{alineas}
```

### 3. Citações e Referências
O template usa o sistema numérico ABNT:

```latex
% Citação direta
\cite{AutorAno}

% Citação com texto
Conforme \citeonline{AutorAno}, ...

% Múltiplas citações
\cite{Autor1Ano, Autor2Ano}
```

**Bibliografia** (`referencias.bib`):
```bibtex
@book{AutorAno,
    author = {Sobrenome, Nome},
    title = {Título do Livro},
    publisher = {Editora},
    address = {Cidade},
    year = {2023},
}

@article{Autor2Ano,
    author = {Sobrenome, Nome},
    title = {Título do Artigo},
    journal = {Nome da Revista},
    volume = {1},
    number = {1},
    pages = {1--10},
    year = {2023},
}
```

### 4. Figuras e Tabelas

**Figura**:
```latex
\begin{figure}[htb]
    \centering
    \caption{Legenda da figura}
    \includegraphics[width=0.8\textwidth]{figuras/nome-da-figura.png}
    \fonte{Autor (2023)}
    \label{fig:nome-figura}
\end{figure}
```

**Tabela**:
```latex
\begin{table}[htb]
    \centering
    \caption{Legenda da tabela}
    \begin{tabular}{|l|c|r|}
        \hline
        Coluna 1 & Coluna 2 & Coluna 3 \\
        \hline
        Dados & Dados & Dados \\
        \hline
    \end{tabular}
    \fonte{Autor (2023)}
    \label{tab:nome-tabela}
\end{table}
```

**Quadro** (para conteúdo textual):
```latex
\begin{quadro}[htb]
    \centering
    \caption{Legenda do quadro}
    \begin{tabular}{|l|p{8cm}|}
        \hline
        Item & Descrição \\
        \hline
        Item 1 & Descrição detalhada \\
        \hline
    \end{tabular}
    \fonte{Autor (2023)}
    \label{qua:nome-quadro}
\end{quadro}
```

### 5. Códigos-fonte

```latex
\begin{lstlisting}[
    language=Python,
    caption={Exemplo de código Python},
    label={cod:exemplo-python}
]
def exemplo():
    print("Hello World!")
    return True
\end{lstlisting}
```

### 6. Algoritmos

```latex
\begin{algorithm}[H]
    \SetAlgoLined
    \KwData{Dados de entrada}
    \KwResult{Resultado esperado}
    
    \Para{cada item na lista}{
        processar item\;
    }
    
    \caption{Nome do algoritmo}
    \label{alg:exemplo}
\end{algorithm}
```

### 7. Siglas e Glossário

**Definindo siglas** (`lista-de-abreviaturas-e-siglas.tex`):
```latex
\newacronym{TCP}{TCP}{Transmission Control Protocol}
\newacronym{HTTP}{HTTP}{HyperText Transfer Protocol}
```

**Usando siglas no texto**:
```latex
% Primeira ocorrência: Transmission Control Protocol (TCP)
\gls{TCP}

% Demais ocorrências: TCP
\gls{TCP}
```

**Definindo termos do glossário** (`glossario.tex`):
```latex
\newglossaryentry{algoritmo}{
    name=Algoritmo,
    description={Sequência finita de instruções para resolver um problema}
}
```

**Usando termos do glossário**:
```latex
\gls{algoritmo}
```

## Personalização

### 1. Adaptação para Outras Instituições
Para adaptar para outra instituição, edite principalmente:
- `config.tex`: Informações da IES, centro, curso
- `lib/ifs.sty`: Logos, formatações específicas
- `elementos-pre-textuais/`: Templates de páginas iniciais

### 2. Tipos de Trabalho Suportados
- `tccgraduacao`: TCC de graduação
- `tccespecializacao`: TCC de especialização  
- `dissertacao`: Dissertação de mestrado
- `tese`: Tese de doutorado

### 3. Customização Visual
No arquivo `config.tex`:
```latex
% Remove bordas dos links (para impressão)
\removerbordasdohyperlink{sim}

% Adiciona cor azul aos links
\cordohyperlink{nao}
```

## Comandos Úteis

### Referências Cruzadas
```latex
\autoref{cap:introducao}    % Capítulo 1
\autoref{sec:objetivos}     % Seção 1.2
\autoref{fig:arquitetura}   % Figura 1
\autoref{tab:resultados}    % Tabela 1
\autoref{qua:comparacao}    % Quadro 1
```

### Listas Especiais
```latex
% Lista com alíneas (a, b, c...)
\begin{alineas}
    \item Primeira alínea
    \item Segunda alínea
\end{alineas}

% Lista com subalíneas (1, 2, 3...)
\begin{subalineas}
    \item Primeira subalínea
    \item Segunda subalínea
\end{subalineas}

% Lista com incisos (I, II, III...)
\begin{incisos}
    \item Primeiro inciso
    \item Segundo inciso
\end{incisos}
```

## Compilação no Overleaf

### Configurações Recomendadas
1. **Compilador**: pdfLaTeX ou XeLaTeX
2. **Compilação**: Automática ou manual
3. **Timeout**: Aumentar se necessário (projeto complexo)

### Ordem de Compilação para Listas
Para gerar as listas automáticas corretamente:
1. Primeira compilação: pdfLaTeX
2. Executar: makeglossaries (automático no Overleaf)
3. Segunda compilação: pdfLaTeX
4. Terceira compilação: pdfLaTeX (para referências cruzadas)

## Solução de Problemas

### 1. Listas não Aparecem
- Certifique-se de que há conteúdo nas seções correspondentes
- Compile múltiplas vezes
- Verifique se os contadores estão configurados

### 2. Referências Bibliográficas
- Verifique a sintaxe do arquivo `.bib`
- Use aspas duplas para campos com acentos
- Certifique-se de que as entradas são citadas no texto

### 3. Figuras não Carregam
- Verifique o caminho do arquivo de imagem
- Formatos suportados: PDF, PNG, JPG
- Evite espaços nos nomes dos arquivos

### 4. Erro de Compilação
- Verifique caracteres especiais não escapados
- Confirme a estrutura de comandos LaTeX
- Consulte o log de erro do Overleaf

## Recursos Adicionais

### Links Úteis
- [abnTeX2](https://www.abntex.net.br/): Documentação oficial
- [ABNT NBR 14724:2011](https://www.normasabnt.org/): Norma para trabalhos acadêmicos
- [Overleaf Documentation](https://www.overleaf.com/learn): Tutoriais LaTeX
- [CTAN](https://ctan.org/): Repositório de pacotes LaTeX

### Dicas de Produtividade
1. Use o sistema de labels consistentemente
2. Mantenha os arquivos organizados por capítulo
3. Faça backup regular do projeto
4. Compile frequentemente para detectar erros cedo
5. Use comentários para organizar o código LaTeX

## Suporte

Para dúvidas sobre o template:
1. Consulte a documentação do abnTeX2
2. Verifique os exemplos incluídos no template
3. Consulte a comunidade LaTeX/Overleaf
4. Entre em contato com o mantenedor do template (Francisco Rodrigues)

---

**Versão**: 2026.1  
**Mantido por**: Francisco Rodrigues  
**Baseado em**: abnTeX2 e customização UECE  

---

> 🤖 **Documentação gerada por IA**: Este conteúdo foi criado automaticamente usando inteligência artificial para facilitar o uso do template LaTeX no Overleaf.