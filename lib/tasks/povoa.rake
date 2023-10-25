namespace :povoa do
  desc "Povoa a tabela People"
  task povoa_people: :environment do
    100.times do
      person = Person.create!(nome: Faker::Name.name, idade: Faker::Number.between(from: 18, to: 80))
      3.times do
        person.contacts.create!({tipo: :email, valor: Faker::Internet.unique.email})
      end
    end
    print('FIM')
  end

end
