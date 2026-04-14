# 📖 Exemplos Práticos - Template TCC


---
> 🤖 **Documentação gerada por IA**: Este conteúdo foi criado automaticamente usando inteligência artificial para facilitar o uso do template LaTeX no Overleaf.

## 🎯 Como Escrever uma Introdução Completa

### Arquivo: `elementos-textuais/introducao.tex`

```latex
\chapter{INTRODUÇÃO}
\label{cap:introducao}
\glsresetall % Reseta todas as siglas para primeira ocorrência

A tecnologia tem transformado diversos setores da sociedade, incluindo a educação. 
Segundo \citeonline{silva2023}, o uso de \gls{IA} em ambientes educacionais tem 
crescido exponencialmente nos últimos anos.

Este trabalho propõe o desenvolvimento de uma aplicação baseada em \gls{ML} 
para auxiliar estudantes em dificuldades de aprendizagem.

\section{CONTEXTUALIZAÇÃO}
\label{sec:contextualizacao}

O cenário atual da educação brasileira apresenta diversos desafios. Dados do 
\gls{INEP} mostram que \cite{brasil2023}...

\section{PROBLEMÁTICA}
\label{sec:problematica}

Apesar dos avanços tecnológicos, ainda existe uma lacuna significativa entre 
as necessidades dos estudantes e as ferramentas disponíveis \cite{santos2022}.

O problema central desta pesquisa pode ser enunciado da seguinte forma: 
\textit{"Como desenvolver uma solução tecnológica que identifique e auxilie 
estudantes com dificuldades de aprendizagem de forma automatizada?"}

\section{JUSTIFICATIVA}
\label{sec:justificativa}

A relevância deste trabalho justifica-se por três aspectos principais:

\begin{alineas}
    \item \textbf{Social}: impacto direto na qualidade da educação;
    \item \textbf{Técnico}: contribuição para o estado da arte em \gls{IA} educacional;
    \item \textbf{Científico}: geração de conhecimento na área de tecnologias assistivas.
\end{alineas}

\section{OBJETIVOS}
\label{sec:objetivos}

\subsection{OBJETIVO GERAL}
\label{subsec:objetivo-geral}

Desenvolver um sistema baseado em \gls{ML} para identificação automática de 
estudantes com dificuldades de aprendizagem e recomendação de atividades 
personalizadas.

\subsection{OBJETIVOS ESPECÍFICOS}
\label{subsec:objetivos-especificos}

Para alcançar o objetivo geral, foram definidos os seguintes objetivos específicos:

\begin{alineas}
    \item Realizar levantamento bibliográfico sobre \gls{IA} aplicada à educação;
    \item Analisar algoritmos de \gls{ML} adequados para o problema proposto;
    \item Desenvolver um protótipo funcional do sistema;
    \item Validar a solução através de testes com usuários reais;
    \item Avaliar os resultados obtidos e propor trabalhos futuros.
\end{alineas}

\section{METODOLOGIA}
\label{sec:metodologia-intro}

Este trabalho adota uma abordagem quantitativa-qualitativa, utilizando:

\begin{enumerate}
    \item Pesquisa bibliográfica sistemática;
    \item Desenvolvimento incremental do sistema;
    \item Testes de usabilidade com grupo focal;
    \item Análise estatística dos resultados.
\end{enumerate}

Maiores detalhes sobre a metodologia são apresentados no \autoref{cap:metodologia}.

\section{ESTRUTURA DO TRABALHO}
\label{sec:estrutura}

Este trabalho está organizado em cinco capítulos:

\begin{description}
    \item[Capítulo 1 - Introdução:] apresenta a contextualização, problemática, 
    objetivos e justificativa da pesquisa;
    \item[Capítulo 2 - Fundamentação Teórica:] aborda os conceitos fundamentais 
    sobre \gls{IA}, \gls{ML} e suas aplicações na educação;
    \item[Capítulo 3 - Metodologia:] detalha o método de pesquisa, ferramentas 
    e procedimentos utilizados;
    \item[Capítulo 4 - Desenvolvimento:] descreve o processo de desenvolvimento 
    do sistema proposto e apresenta os resultados obtidos;
    \item[Capítulo 5 - Conclusão:] sintetiza os principais achados, contribuições 
    e propõe trabalhos futuros.
\end{description}
```

---

## 📊 Como Criar Figuras e Tabelas Profissionais

### Figura com Subfiguras

```latex
\begin{figure}[htb]
    \centering
    
    \begin{subfigure}[b]{0.45\textwidth}
        \centering
        \includegraphics[width=\textwidth]{figuras/antes.png}
        \caption{Antes da implementação}
        \label{fig:antes}
    \end{subfigure}
    \hfill
    \begin{subfigure}[b]{0.45\textwidth}
        \centering
        \includegraphics[width=\textwidth]{figuras/depois.png}
        \caption{Após a implementação}
        \label{fig:depois}
    \end{subfigure}
    
    \caption{Comparação dos resultados do sistema}
    \fonte{Elaborado pelo autor}
    \label{fig:comparacao-resultados}
\end{figure}

% No texto:
A \autoref{fig:comparacao-resultados} mostra a evolução do sistema, onde 
pode-se observar na \autoref{fig:antes} que... e na \autoref{fig:depois} que...
```

### Tabela de Resultados

```latex
\begin{table}[htb]
    \centering
    \caption{Resultados dos testes de performance}
    \begin{tabular}{|l|c|c|c|c|}
        \hline
        \multirow{2}{*}{\textbf{Algoritmo}} & \multicolumn{2}{c|}{\textbf{Tempo (ms)}} & \multicolumn{2}{c|}{\textbf{Precisão (\%)}} \\
        \cline{2-5}
        & \textbf{Treino} & \textbf{Teste} & \textbf{Treino} & \textbf{Teste} \\
        \hline
        Random Forest & 1.250 & 45 & 98,5 & 87,2 \\
        \hline
        SVM & 2.180 & 78 & 96,8 & 89,1 \\
        \hline
        Neural Network & 5.670 & 123 & 99,1 & 91,4 \\
        \hline
        \textbf{Proposta} & \textbf{1.890} & \textbf{67} & \textbf{97,9} & \textbf{92,8} \\
        \hline
    \end{tabular}
    \fonte{Elaborado pelo autor}
    \label{tab:resultados-performance}
\end{table}

% No texto:
Os resultados apresentados na \autoref{tab:resultados-performance} demonstram 
que o algoritmo proposto obteve a melhor precisão nos testes, com 92,8\%...
```

### Quadro Conceitual

```latex
\begin{quadro}[htb]
    \centering
    \caption{Comparação entre metodologias de desenvolvimento}
    \begin{tabular}{|p{3cm}|p{4cm}|p{4cm}|p{3cm}|}
        \hline
        \textbf{Metodologia} & \textbf{Características} & \textbf{Vantagens} & \textbf{Limitações} \\
        \hline
        Tradicional & Fases sequenciais bem definidas & 
        Documentação completa & Pouca flexibilidade \\
        \hline
        Ágil & Entregas incrementais & 
        Adaptação rápida & Menos documentação \\
        \hline
        DevOps & Integração contínua & 
        Entrega contínua & Complexidade inicial \\
        \hline
    \end{tabular}
    \fonte{Adaptado de \citeonline{pressman2021}}
    \label{qua:metodologias-desenvolvimento}
\end{quadro}
```

---

## 💻 Como Incluir Códigos-fonte

### Código Python

```latex
\begin{lstlisting}[
    language=Python,
    caption={Algoritmo de classificação implementado},
    label={cod:classificacao-principal},
    basicstyle=\footnotesize\ttfamily,
    keywordstyle=\color{blue}\bfseries,
    commentstyle=\color{gray}\itshape,
    stringstyle=\color{red},
    numberstyle=\tiny\color{gray},
    numbers=left,
    numbersep=5pt,
    frame=single,
    breaklines=true,
    showstringspaces=false
]
import numpy as np
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, classification_report

class StudentClassifier:
    """
    Classificador para identificar estudantes com dificuldades.
    """
    
    def __init__(self, n_estimators=100, random_state=42):
        self.model = RandomForestClassifier(
            n_estimators=n_estimators, 
            random_state=random_state
        )
        self.is_trained = False
    
    def train(self, X_train, y_train):
        """
        Treina o modelo com os dados fornecidos.
        
        Args:
            X_train: Características dos estudantes
            y_train: Labels (0=sem dificuldade, 1=com dificuldade)
        """
        self.model.fit(X_train, y_train)
        self.is_trained = True
        print("Modelo treinado com sucesso!")
    
    def predict(self, X_test):
        """
        Realiza predições para novos estudantes.
        """
        if not self.is_trained:
            raise ValueError("Modelo deve ser treinado primeiro!")
        
        return self.model.predict(X_test)
    
    def get_feature_importance(self):
        """
        Retorna a importância de cada característica.
        """
        return self.model.feature_importances_

# Exemplo de uso
classifier = StudentClassifier()
classifier.train(X_train, y_train)
predictions = classifier.predict(X_test)
accuracy = accuracy_score(y_test, predictions)
print(f"Acurácia: {accuracy:.2%}")
\end{lstlisting}
```

### Código SQL

```latex
\begin{lstlisting}[
    language=SQL,
    caption={Criação da base de dados para o sistema},
    label={cod:database-schema}
]
-- Criação das tabelas principais do sistema
CREATE TABLE estudantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_nascimento DATE,
    turma_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (turma_id) REFERENCES turmas(id)
);

CREATE TABLE atividades (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200) NOT NULL,
    descricao TEXT,
    dificuldade ENUM('facil', 'medio', 'dificil'),
    area_conhecimento VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE resultados_atividades (
    id INT PRIMARY KEY AUTO_INCREMENT,
    estudante_id INT NOT NULL,
    atividade_id INT NOT NULL,
    pontuacao DECIMAL(5,2),
    tempo_gasto INT, -- em segundos
    data_realizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (estudante_id) REFERENCES estudantes(id),
    FOREIGN KEY (atividade_id) REFERENCES atividades(id)
);

-- Índices para otimizar consultas
CREATE INDEX idx_resultados_estudante ON resultados_atividades(estudante_id);
CREATE INDEX idx_resultados_atividade ON resultados_atividades(atividade_id);
\end{lstlisting}
```

---

## 🔬 Como Escrever Algoritmos

```latex
\begin{algorithm}[H]
    \SetAlgoLined
    \SetKwInOut{Input}{Entrada}
    \SetKwInOut{Output}{Saída}
    
    \Input{Dataset de estudantes $D$, parâmetros do modelo $\theta$}
    \Output{Modelo classificador treinado $M$}
    
    \BlankLine
    
    \caption{Algoritmo de treinamento do classificador}
    \label{alg:treinamento-classificador}
    
    $D_{treino}, D_{teste} \leftarrow$ DividirDataset($D$, 0.8)\;
    $X_{treino}, y_{treino} \leftarrow$ ExtrairCaracteristicas($D_{treino}$)\;
    
    \BlankLine
    
    \Para{cada configuração $c$ em $\theta$}{
        $M_c \leftarrow$ InicializarModelo($c$)\;
        $M_c \leftarrow$ Treinar($M_c$, $X_{treino}$, $y_{treino}$)\;
        $score_c \leftarrow$ Validar($M_c$, $D_{teste}$)\;
        
        \Se{$score_c > melhor\_score$}{
            $melhor\_score \leftarrow score_c$\;
            $melhor\_modelo \leftarrow M_c$\;
        }
    }
    
    \BlankLine
    
    \Retorna{$melhor\_modelo$}
\end{algorithm}
```

---

## 📚 Como Gerenciar Bibliografia Corretamente

### Arquivo `referencias.bib` - Exemplos Completos

```bibtex
% Livro
@book{pressman2021,
    author = {Pressman, Roger S. and Maxim, Bruce R.},
    title = {Engenharia de Software: Uma Abordagem Profissional},
    publisher = {McGraw Hill Brasil},
    address = {São Paulo},
    year = {2021},
    edition = {9},
}

% Artigo de periódico
@article{silva2023,
    author = {Silva, Maria José and Santos, João Carlos},
    title = {Inteligência Artificial na Educação: Uma Revisão Sistemática},
    journal = {Revista Brasileira de Informática na Educação},
    volume = {31},
    number = {2},
    pages = {45--67},
    year = {2023},
    publisher = {Sociedade Brasileira de Computação},
}

% Artigo de conferência
@inproceedings{oliveira2022,
    author = {Oliveira, Ana Paula and Costa, Pedro Henrique},
    title = {Machine Learning para Detecção de Dificuldades de Aprendizagem},
    booktitle = {Anais do XXIX Simpósio Brasileiro de Informática na Educação},
    year = {2022},
    pages = {123--135},
    address = {Manaus},
    publisher = {SBC},
}

% Documento online/site
@misc{brasil2023,
    author = {{BRASIL}},
    title = {Censo da Educação Superior 2022},
    howpublished = {Instituto Nacional de Estudos e Pesquisas Educacionais Anísio Teixeira},
    year = {2023},
    url = {https://www.gov.br/inep/pt-br/areas-de-atuacao/pesquisas-estatisticas-e-indicadores/censo-da-educacao-superior},
    note = {Acesso em: 10 jan. 2024}
}

% Dissertação
@mastersthesis{santos2022,
    author = {Santos, Carlos Alberto},
    title = {Desenvolvimento de Sistema Adaptativo para Ensino de Programação},
    school = {Universidade Federal de Sergipe},
    year = {2022},
    address = {São Cristóvão},
    type = {Dissertação (Mestrado em Ciência da Computação)}
}

% Capítulo de livro
@inbook{russell2019,
    author = {Russell, Stuart and Norvig, Peter},
    title = {Aprendizado de Máquina},
    booktitle = {Inteligência Artificial},
    chapter = {18},
    pages = {695--751},
    publisher = {Elsevier},
    address = {Rio de Janeiro},
    year = {2019},
    edition = {4}
}
```

### Como Citar no Texto

```latex
% Citação autor-data integrada ao texto
Segundo \citeonline{silva2023}, a aplicação de \gls{IA} na educação tem mostrado 
resultados promissores.

% Citação numérica no final
Diversos estudos apontam para a eficácia do \gls{ML} em contextos educacionais 
\cite{silva2023, oliveira2022}.

% Citação com página específica
Conforme \citeonline[p. 45]{silva2023}, "a personalização do ensino é fundamental 
para o sucesso do aprendizado".

% Múltiplos autores
Os resultados corroboram pesquisas anteriores \cite{silva2023, santos2022, oliveira2022}.

% Citação indireta/paráfrase
A educação brasileira enfrenta desafios significativos relacionados à qualidade 
e equidade do ensino \cite{brasil2023}.
```

---

## 🏷️ Como Usar Siglas e Glossário Efetivamente

### Definindo Siglas (`lista-de-abreviaturas-e-siglas.tex`)

```latex
% Siglas da área de tecnologia
\newacronym{IA}{IA}{Inteligência Artificial}
\newacronym{ML}{ML}{\emph{Machine Learning} ou Aprendizado de Máquina}
\newacronym{API}{API}{\emph{Application Programming Interface}}
\newacronym{JSON}{JSON}{\emph{JavaScript Object Notation}}
\newacronym{HTTP}{HTTP}{\emph{HyperText Transfer Protocol}}
\newacronym{REST}{REST}{\emph{Representational State Transfer}}

% Siglas educacionais
\newacronym{LMS}{LMS}{\emph{Learning Management System}}
\newacronym{EAD}{EaD}{Educação a Distância}
\newacronym{INEP}{INEP}{Instituto Nacional de Estudos e Pesquisas Educacionais Anísio Teixeira}

% Siglas da pesquisa
\newacronym{TCC}{TCC}{Trabalho de Conclusão de Curso}
\newacronym{CAPES}{CAPES}{Coordenação de Aperfeiçoamento de Pessoal de Nível Superior}
```

### Definindo Termos do Glossário (`glossario.tex`)

```latex
\newglossaryentry{algoritmo}{
    name=Algoritmo,
    description={Sequência finita de instruções bem definidas e não ambíguas, 
    cada uma das quais pode ser executada mecanicamente num período de tempo 
    finito e com uma quantidade de esforço finita}
}

\newglossaryentry{aprendizado-supervisionado}{
    name=Aprendizado Supervisionado,
    description={Tipo de \gls{ML} onde o algoritmo aprende a partir de exemplos 
    de entrada e saída desejada, permitindo que faça predições sobre novos dados}
}

\newglossaryentry{dataset}{
    name=Dataset,
    description={Conjunto de dados estruturados utilizados para treinar e 
    testar algoritmos de \gls{ML}}
}

\newglossaryentry{overfitting}{
    name=Overfitting,
    description={Fenômeno que ocorre quando um modelo de \gls{ML} aprende muito 
    bem os dados de treinamento, mas falha ao generalizar para novos dados}
}
```

### Usando no Texto

```latex
% Primeira vez que uma sigla aparece: Machine Learning (ML)
Este trabalho propõe o uso de \gls{ML} para identificar padrões de aprendizagem.

% Próximas vezes: ML
O \gls{ML} tem se mostrado eficaz em diversas aplicações educacionais.

% Forma plural: APIs (mesmo que definida no singular)
As \glspl{API} modernas oferecem grande flexibilidade.

% Glossário
O \gls{algoritmo} proposto utiliza técnicas de \gls{aprendizado-supervisionado} 
para processar o \gls{dataset} e evitar \gls{overfitting}.

% Reset das siglas no início de cada capítulo
\glsresetall % No início de cada arquivo de capítulo
```

---

## 📐 Como Incluir Fórmulas Matemáticas

```latex
% Fórmula inline
A acurácia é calculada como $A = \frac{VP + VN}{VP + VN + FP + FN}$, onde...

% Fórmula em destaque
A função de custo utilizada foi:
\begin{equation}
    J(\theta) = \frac{1}{2m} \sum_{i=1}^{m} (h_\theta(x^{(i)}) - y^{(i)})^2
    \label{eq:funcao-custo}
\end{equation}

% Sistema de equações
\begin{align}
    x_1 + 2x_2 + x_3 &= 4 \label{eq:sistema1}\\
    2x_1 - x_2 + 3x_3 &= 7 \label{eq:sistema2}\\
    x_1 + x_2 - x_3 &= 1 \label{eq:sistema3}
\end{align}

% No texto, referenciar:
Como mostra a \autoref{eq:funcao-custo}, o objetivo é minimizar...
```

---

💡 **Dica Final**: Use estes exemplos como base e adapte conforme suas necessidades. Lembre-se de sempre compilar após grandes mudanças para identificar erros rapidamente!


---
> 🤖 **Documentação gerada por IA**: Este conteúdo foi criado automaticamente usando inteligência artificial para facilitar o uso do template LaTeX no Overleaf.