# language: pt

Funcionalidade: Pesquisar funcionarios
    Para averiguar informacoes
    O usuario do sistema
    Deseja poder consultar informacoes de funcionarios

    Cenario: Buscar informacoes de funcionarios
        Dado que o usuario consulte informacoes de funcionarios
        Quando ele realizar a pesquisa
        Entao uma lista de funcionarios deve ser retornada
    
    @cenario_dois
    Cenario: Cadastrar funcionario
        Dado que o usuario cadastre um novo funcionario
        Quando ele enviar as informacoes do funcionario
        Entao esse funcionario sera cadastrado