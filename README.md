# Projeto de Automação de Testes WEB com Robot Framework e Python

Este projeto é uma estrutura básica para automação de testes de aplicações web utilizando o Robot Framework e a linguagem de programação Python.

## Requisitos

Certifique-se de ter os seguintes requisitos instalados:

- Python 3.x: [Python](https://www.python.org/downloads/)
- Robot Framework: `pip install robotframework`
- SeleniumLibrary: `pip install robotframework-seleniumlibrary`
- Webdriver: ChromeDriver ou Geckodriver (dependendo do navegador)


1. Clone o repositório: `git clone https://github.com/RayssaRbm/QA-Engineer`


## Executando os Testes

Para executar os testes, utilize o seguinte comando:

robot tests/

Isso irá executar todos os testes no diretório `tests/`.

Você também pode executar testes específicos ou tags específicas usando os argumentos do Robot Framework. Por exemplo:

robot --test NomeDoTeste tests/


## Estrutura do Projeto

O projeto segue a seguinte estrutura:

.
├── Project
│ ├── settings
├ ├── variables
├ ├── keywords
│ ├── test Cases
│ └── 
├── results
├── report
├── log
├── output
├── README.md