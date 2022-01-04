# Code.education Rocks!

Este repositório é a entrega do Desafio Go do módulo Docker do curso FullCycle, que consiste em criar uma imagem Docker seguindo alguns requisitos específicos.

## Requisitos

1) Escrever um programa em Go que imprima a saída **"Code.education Rocks!"**.
2) Criar uma imagem Docker que execute este programa, mas que seja **otimizada e tenha menos de 2MB**.
3) Publicar essa imagem no repositório **DockerHub**.

## Docker Hub

Segue abaixo o link da imagem publicada no Docker Hub:

`https://hub.docker.com/repository/docker/eurafa/codeeducation`

## Executando a imagem

`docker run eurafa/codeeducation`

A saída deve ser:

`Code.education Rocks!`

> Foi aberto um tópico de dúvida sobre essa saída, pois no vídeo do Wesley ele fala que deve ser "FullCycle Rocks!". O desenvolvimento foi baseado na descrição do desafio, onde consta "Code.education Rocks!".

## Gerando a imagem local

Caso a imagem já tenha sido removida pelo Docker Hub por algum motivo, é possível gerar ela novamente através do Dockerfile deste repositório.

Clone o repositório e então execute:

`docker build -t eurafa/codeeducation .`

Confira a imagem gerada e o tamanho da mesma através do comando:

`docker images`

Se estiver usando Linux pode usar o pipe/grep para filtrar a imagem:

`docker images | grep eurafa/codeeducation`