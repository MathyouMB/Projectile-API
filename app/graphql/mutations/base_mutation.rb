module Mutations
    class Mutations::BaseMutation < GraphQL::Schema::Mutation
        null false # require stuff in each mutation
    end
  end