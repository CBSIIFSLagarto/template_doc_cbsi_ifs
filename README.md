<!-- TOC depthFrom:1 depthTo:6 orderedList:false -->

- [Sobre](#sobre)
- [Conteúdo](#conte%C3%BAdo)
    - [Construção de atas](#constru%C3%A7%C3%A3o-de-atas)
    - [Construção de TCC](#constru%C3%A7%C3%A3o-de-tcc)
- [Contribuição](#contribui%C3%A7%C3%A3o)
- [Agradecimentos](#agradecimentos)

<!-- /TOC -->

# Sobre

Este repositório contém os templates utilizados pelo prof. Francisco Rodrigues em suas atividades no [Instituto Federal de Sergipe](www.ifs.edu.br).

# Conteúdo

|Conteúdo| Pasta   |
|---|---|
|Template para construção de atas de reunião | AtaReuniao |
| Template para construção de Trabalhos científicos | ConclusaoCurso| 

## Construção de atas

1. Iniciar o documento com 

    ```
    \documentclass[12pt,a4paper]{ata} 
    ```

1. Modificar os parâmetros conforme as definições dos *labels*. Alguns deste parametros são:
    * data, 
    * lista de pessoas
    * tipo da reunião 
    * presidente e 
    * secretário

1. Cada tópico da reunião deverá ser um bloco o exemplo a seguir:

    ```
    \begin{ponto}{Indicação de uma pessoa para secretariar a reunião}
    O~\prof \secretariou \space se ofereceu para secretariar a reunião.
    \end{ponto}
    ```

1. Outros ajustes

    * Observar as anotações do arquivo .Tex
    * É recomendado que a lista de pessoas também seja atualizada, indicando a matrícula, nome completo e nome abreviado para ser utilizado no documento.
    * A região com assinatura é opicional, basta remover o comando ```\imprimirRegiaoAssinaturaPresentes``` o final do documento.

## Construção de TCC

Ver readme da pasta.


# Contribuição

* Registre seu pedido/erro [aqui](https://bitbucket.org/frchicoifs/template_doc_cbsi_ifs_latex/issues?status=new&status=open).
* Você também pode contribuir colaborando com novos templates,reportando erros ou sugerindo atualizações. Clone o repositório e crie seu *Pull request*.

# Agradecimentos

* Ao prof. Fernando Náufel do Amaral e ao mantenedor do [site](angg.twu.net/LATEX/) por elaborar e disponibilizarem este modelo de Ata.
* A equipe da [ueceTeX2](https://github.com/thiagodnf/uecetex2) por construir o modelo de trabalhos de conclusão de curso.
* Ao site [Sharelatex](www.Sharelatex.com) por facilitar minha vida na hora de testar os templates.