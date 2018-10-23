<!-- TOC depthFrom:1 depthTo:6 orderedList:false -->

- [Sobre](#sobre)
- [Conteúdo](#conteúdo)
    - [Construção de atas](#construção-de-atas)
    - [Construção de TCC](#construção-de-tcc)
- [Contribuição](#contribuição)
- [Agradecimentos](#agradecimentos)

<!-- /TOC -->

# Sobre

Este repositório contém os templates utilizados pelo prof. Francisco Rodrigues em suas atividades no [Instituto Federal de Sergipe](http://www.ifs.edu.br).

# Conteúdo

| Conteúdo (Modelos)             | Pasta          | Situação   |
| ------------------------------ | :------------: | :--------: |
| Atas de reunião                | AtaReuniao     | Disponível |
| Trabalhos científicos (TCC)    | ConclusaoCurso | Disponível |
| Slides/Apresentação            | Slides         | Disponível |
| Exercícios                     | Exercícios     | Disponível |
| Avaliação                      |                | Pendente   |
| Poster                         | Poster         | Disponível |
| Projeto de pesquisa / PROPEX   |                | Pendente   |
| Relatório de pesquisa / PROPEX |                | Pendente   |

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


# Contribuição

* Registre seu pedido/erro [aqui](https://bitbucket.org/frchicoifs/template_doc_cbsi_ifs_latex/issues?status=new&status=open).
* Você também pode contribuir colaborando com novos templates,reportando erros ou sugerindo atualizações. Clone o repositório e crie seu *Pull request*.

# Agradecimentos

* Ao prof. Gilson Pereira por descobrir a compatibilidade do modelo ueceTex2 com que a CBSI utiliza em seus TCC;
* Ao prof. Fernando Náufel do Amaral e ao mantenedor do [site](http://angg.twu.net/LATEX/) por elaborar e disponibilizarem este modelo de Ata;
* A equipe da [ueceTeX2](https://github.com/thiagodnf/uecetex2) por construir o modelo de trabalhos de conclusão de curso;
* Ao site [Sharelatex](http://www.Sharelatex.com)/[Overleaf](http://overleaf.com/) por facilitar minha vida na hora de testar os templates.