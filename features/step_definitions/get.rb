Dado('que o usuario consulte informacoes de funcionarios') do
    @get_url = 'http://dummy.restapiexample.com/api/v1/employees'
end

Quando('ele realizar a pesquisa') do
    @list_empoyee = HTTParty.get(@get_url)
end

Entao('uma lista de funcionarios deve ser retornada') do
    expect(@list_empoyee.code).to eql 200
    expect(@list_empoyee.message).to eql 'OK'
end