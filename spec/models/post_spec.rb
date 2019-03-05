require 'rails_helper'
describe Post do
	it "é válido quando o usuário esta logado e o texto e conteúdo do tópico esta preenchido" do
  	user = User.create!( email: 'teste@teste', password: '123456')
		post = user.posts.build(title: 'Primeiro tópico', content: 'Conteúdo aleatório')
   	expect(post).to be_valid
	  end
end
