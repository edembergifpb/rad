class Person < ApplicationRecord
    has_many :contacts
    accepts_nested_attributes_for :contacts, reject_if: :all_blank, allow_destroy: true

    validates :nome, presence: true, length: {in: 10..100, message: "tamanho invalido"}, format: { with: /\A[a-zA-Z]+\z/, message: "'%{value}' Nao é valido! Usar apenas letras" }
    validates :idade, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 18, less_than_or_equal_to: 80}
end
