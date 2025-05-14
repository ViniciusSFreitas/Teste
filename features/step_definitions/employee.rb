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

Dado('que o usuario cadastre um novo funcionario') do
    @post_url = 'http://dummy.restapiexample.com/api/v1/create'    
end

Quando('ele enviar as informacoes do funcionario') do     
    @create_employee = HTTParty.post(@post_url, :headers => { 'Content-Type' => 'application/json' }, body: {
        "employee_name": "Vini",
        "employee_salary": 420800,
        "employee_age": 24,
        "profile_image": ""
    }.to_json)

    puts @create_employee
end

Entao('esse funcionario sera cadastrado') do
    expect(@create_employee.code).to eql (200)
    expect(@create_employee.message).to eql 'OK'
    expect(@create_employee["status"]).to eql 'success'
    expect(@create_employee["message"]).to eql 'Successfully! Record has been added.'
    expect(@create_employee['data']["employee_name"]).to eql 'Vini'
    expect(@create_employee['data']["employee_salary"]).to eql (420800)
    expect(@create_employee['data']["employee_age"]).to eql (24)
end