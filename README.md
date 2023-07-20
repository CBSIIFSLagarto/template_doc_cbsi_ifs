<!-- TOC -->

- [Sobre](#sobre)
- [Situação/Disponibilidade de modelos](#situaçãodisponibilidade-de-modelos)
- [Ajuda](#ajuda)
    - [Construção de atas](#construção-de-atas)
    - [Construção de TCC](#construção-de-tcc)
    - [Construção de Poster](#construção-de-poster)
- [Contribuição](#contribuição)
- [Agradecimentos / Referências](#agradecimentos--referências)

<!-- /TOC -->

# Sobre

Este repositório contém os templates utilizados pelo prof. Francisco Rodrigues em suas atividades no [Instituto Federal de Sergipe](http://www.ifs.edu.br).

# Situação/Disponibilidade de modelos

| Modelos                        | Pasta          | Situação/Exemplo                                                                                                |
| ------------------------------ | :------------: | :-------------------------------------------------------------------------------------------------------------: |
| Atas de reunião                | AtaReuniao     | [Disponível](/AtaReuniao/AtaReuniao.pdf) |
| Trabalhos científicos (TCC)    | ConclusaoCurso | [Disponível](/ConclusaoCurso/documento.pdf)                                                                                                      |
| Atas de reunião TCC            | AtaReuniao/TCC | [Disponível](/AtaReuniao/TCC/readme.md) |
| Slides/Apresentação            | Slides         | [Disponível](/Slides/Modelo.pdf)        |
| Exercícios                     | Exercicios     | [Disponível](/Exercicios/ModeloExercicio.pdf) |
| Avaliação                      |                | Pendente                                                                                                        |
| Poster                         | Poster         | [Disponível](/Poster/PosterIFS.pdf)      |
| Projeto de pesquisa / PROPEX   |                | Pendente                                                                                                        |
| Relatório de pesquisa / PROPEX |                | Pendente                                                                                                        |

# Ajuda

## Construção de atas

1. Iniciar o documento com

    ```
    \documentclass[12pt,a4paper]{ata}
    ```

2. Modificar os parâmetros conforme as definições dos *labels*. Alguns deste parametros são:
    * data
    * lista de pessoas
    * tipo da reunião 
    * presidente e 
    * secretário

3. Cada tópico da reunião deverá ser um bloco o exemplo a seguir:

    ```
    \begin{ponto}{Indicação de uma pessoa para secretariar a reunião}
    O~\prof \secretariou \space se ofereceu para secretariar a reunião.
    \end{ponto}
    ```

4. Outros ajustes

    * Observar as anotações do arquivo .Tex
    * É recomendado que a lista de pessoas também seja atualizada, indicando a matrícula, nome completo e nome abreviado para ser utilizado no documento.
    * A região com assinatura é opicional, basta remover o comando ```\imprimirRegiaoAssinaturaPresentes``` o final do documento.

## Construção de TCC

Ver readme da pasta.

## Construção de Poster

Fazer uso da classe `PosterIFS` conforme exemplo no diretório.

# Contribuição

* Registre seu pedido/erro [aqui](https://bitbucket.org/frchicoifs/template_doc_cbsi_ifs_latex/issues?status=new&status=open).
* Você também pode contribuir colaborando com novos templates, reportando erros ou sugerindo atualizações. Clone o repositório e crie seu *Pull request*.

# Agradecimentos / Referências

* A profa. Catuxe pelo incentivo.
* Ao prof. Gilson Pereira por descobrir a compatibilidade do modelo ueceTex2 com que a CBSI utiliza em seus TCC;
* Ao prof. Fernando Náufel do Amaral e ao mantenedor do [site](http://angg.twu.net/LATEX/) por elaborar e disponibilizarem este modelo de Ata;
* A equipe da [ueceTeX2](https://github.com/thiagodnf/uecetex2) por construir o modelo de trabalhos de conclusão de curso;
* Ao site [Sharelatex](http://www.Sharelatex.com)/[Overleaf](http://overleaf.com/) por facilitar minha vida na hora de testar os templates.
* [LATEX 2εfor class and package writers](https://www.latex-project.org/help/documentation/clsguide.pdf)
* [How to develop your own document class — our experience](https://www.tug.org/TUGboat/tb29-3/tb93mansfield.pdf)
