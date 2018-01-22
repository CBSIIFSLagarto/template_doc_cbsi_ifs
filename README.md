
# O que é?

O **ifsTeX2** é um projeto baseado no **ueceTeX2** e no [abnTeX2] desenvolvido para auxiliar os alunos e servidores do Insitituto Federal de Sergipe - IFS em seus trabalhos de monografias de graduação, dissertações de mestrado, teses de doutorado e atividades laborais. 
Embora tenha sido escrita para ser utilizada principalmente pelos alunos da Computação, a ifsTeX2 é suficientemente configurável e facilmente adaptável para ser utilizada em praticamente todos os cursos do IFS. 
Atualemente é um modelo adotado pela coordenação de sistemas de informação durante o desenvolvimento de trabalhos acadêmicos que implemente todas as exigências das normas da ABNT sem a necessidade de se preocupar com o estilo ou formatação do documento.

Dentro deste pacote são ofertados os seguintes modelos:

### Modelos Disponíveis

**Trabalhos Acadêmicos**

 - Trabalho de Conclusão de Curso de Graduação
 - Trabalho de Conclusão de Curso de Especialização
 - Dissertação de Mestrado Acadêmico e Profissional
 - Tese de Doutorado
 
**Qualificações**

 - Qualificação para Mestrado Acadêmico e Profissional
 
 **Ata de reuião**
 
 - Atas de reunião

# Por onde começo?
Para utilizar o ifsTeX2 você precisa seguir os seguintes passos:

1. Baixar o projeto
2. Descompacte o arquivo no diretório onde vc deseja guardar os arquivos do seu trabalho
3. Crie o seu texto a partir do arquivo *documento.tex* distribuído no arquivo baixado. O arquivo possui comentários e é, em certa medida, auto-explicativo.

Para ata de reunião:

1. Preencher o arquivo listaPessoas.tex com a lista de pessoas conforme modelo
3. Fazer uma cópia do arquivo AtaReuniao.tex renomeando informando a data e título como parte do nome do arquivo. Observe as necessidades dos labels que estão definidos nele.
3.1 Redigir a ata e sempre que for citar uma pessoa usar o comando \gls{p.NomePessoa}. Sendo p.NomePessoa o apelido definido no arquivo listaPessoas.tex


> Você é iniciante em LaTeX ou em abnTeX2? Clique [aqui](https://code.google.com/p/abntex2/wiki/PorOndeComecar) para acessar a página desenvolvida pela equipe do abnTeX2. Nesta página é possível acessar diversos links sobre o LaTeX e sobre o abnTeX2 como, por exemplo, a história do LaTeX e alguns minicursos desenvolvidos em outras universidades

# Como compilar?

Uma vez que todas as informações foram colocadas no documento, você precisará de um programa para compilar e gerar o PDF do seu trabalho.

### Windows
 - Acesse [https://github.com/thiagodnf/uecetex2/wiki/Como-instalar-no-Windows] 
 
### Linux

 - Acesse [https://github.com/thiagodnf/uecetex2/wiki/Como-instalar-no-Linux] 
 
# Limitações
 
 O modelo atual possui algumas limitações que podem ser corrigidas ou implementadas em alguma versão futura. São elas:
 
  - O modelo permite a participação de somente um co-orientador
  - A folha de aprovação da Dissertação suporta no máximo 5 pessoas (Orientador, Co-orientador e 3 membros externos)
  - A folha de aprovação da Tese suporta no máximo 6 pessoas (Orientador, Co-orientador e 4 membros externos)
  
# Dicas
Veja a seguir como inserir alguns elementos no seu texto.

### Como inserir uma Tabela
```tex
\begin{table}[h!]	
	\centering
	\Caption{\label{tab:label_da_tabela} Legenda da Tabela}
	\UECEtab{}{
		\begin{tabular}{ccll}
			\toprule
	    		Quisque & pharetra & tempus & vulputate \\
			\midrule \midrule
				E1 & Complete coverage & Both splice sites \\
				E2 & Complete coverage & Both splice sites \\
				E3 & Partial coverage & Both splice sites & Both \\
				E4 & Partial coverage & One splice site & Both \\
				E5 & Complete or coverage & No splice & Both \\
				E6 & No coverage & No splice sites\\
			\bottomrule
		\end{tabular}
	}{
		\Fonte{Elaborado pelo autor}
    }
\end{table}
```

### Como inserir um Quadro
```tex
\begin{quadro}[h!]	
	\centering
	\Caption{\label{qua:label_do_quadro} Legenda do Quadro}
	\UECEqua{}{
		\begin{tabular}{|c|c|}
			\hline
			Quisque & pharetra \\
			\hline
			E1 & Complete coverage  \\
			\hline
			E2 & Complete coverage \\
			\hline
		\end{tabular}
	}{
		\Fonte{Elaborado pelo autor}
	}
\end{quadro}
```

### Como inserir uma figura
```tex
\begin{figure}[h!]
	\centering

	\UECEfig{}{
	    \includegraphics[width=8cm]{figuras/figura-1}
	}{
	    \Caption{\label{fig:label_da_figura} Legenda da Figura}	
	    \Fonte{Elaborado pelo autor}
	}	
\end{figure}
```

### Como inserir uma alínea
```tex
\begin{alineas}
	\item Lorem ipsum dolor sit amet;
    \item Praesent vitae nulla varius;
	\item Praesent quis erat eleifend;
	\item Mauris facilisis odio eu:
	\begin{subalineas}
		\item Integer non lacinia magna;
		\item Proin mattis placerat risus.
	\end{subalineas}
\end{alineas}
```

### Como criar Capítulos
```tex
\chapter{Fundamentação Teórica}
\label{cap:fundamentacao-teorica}
```

### Como criar Seções
```tex
% Seções Secundárias
\section{Objetivo Geral 2}
\label{sec:objetivo-geral-2}

% Seções Terciárias
\subsection{Objetivo Geral 3}
\label{sec:objetivo-geral-3}

% Seções Quaternárias
\subsubsection{Objetivo Geral 4}
\label{sec:objetivo-geral-4}

% Seções Quinárias
\subsubsubsection{Objetivo Geral 5}
\label{sec:objetivo-geral-5}
```

### Como inserir um algoritmo
```tex
\begin{algorithm}[h!]
	\SetSpacedAlgorithm
	\caption{\label{alg:algoritmo_de_colonica_de_formigas}Algoritmo de Otimização por Colônia de Formiga}
	\Entrada{Entrada do Algoritmo}
	\Saida{Saida do Algoritmo}
	\Inicio{
		Atribua os valores dos parâmetros\;
		Inicialize as trilhas de feromônios\;
		\Enqto{não atingir o critério de parada}{
			\Para{cada formiga}{
				Construa as Soluções\;
			}
			Aplique Busca Local (Opcional)\;
			Atualize o Feromônio\;
		}	
	}
\end{algorithm}
```


### Como inserir uma sigla:

Caso queira adicionar uma sigla, como por exemplo IFS que significa Instituto Federal de Sergipe, abra o arquivo *elementos-pre-textuais/lista-de-abreviaturas-e-siglas.tex* e cole o seguinte código:

```tex
\newacronym{IFS}{IFS}{Instituto Federal de Sergipe}
```
Sendo:
- O primeiro IFS corresponde a chave que representa a sigla;
- O segundo IFS é a sigla propriamente dita
- E o terceiro parâmetro corresponde à definição da sigla

Um exemplo em um texto, é:

```tex
O \gls{IFS} está localizado em Sergipe.... Caso queira estudar o curso de Sistemas de Informação no \gls{IFS}, você deverá realizar a matrícula no Campus Lagarto.
```
Observe que o LaTeX consegue identificar se é o primeiro uso ou não.

# Atenção

O ueceTeX2 é fornecido gratuitamente e sem garantias e pode ser redistribuído livremente para fins acadêmicos. O ueceTeX2 é um produto extra-oficial e não está oficialmente vinculada à Universidade Estadual do Ceará - UECE.

# Agradecimentos

![alt tag](http://www.goes.uece.br/style/images/logo_goes.png)

Grupo de Otimização em Engenharia de Software

[http://www.goes.uece.br]

[Por Onde Comecar]:https://code.google.com/p/abntex2/wiki/PorOndeComecar
[http://www.goes.uece.br]:http://www.goes.uece.br
[abnTeX2]:https://code.google.com/p/abntex2/
[http://miktex.org/download]:http://miktex.org/download
[http://texstudio.sourceforge.net/]:http://texstudio.sourceforge.net/