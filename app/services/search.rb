# frozen_string_literal: true

class Search
  attr_reader :term
  def initialize(term:)
    @term = term
  end

  def run
    Sunspot.search([TextShout, PhotoShout]) { fulltext term.to_s }.results
    # ShoutSearchQuery.new(term: term.to_s).to_relation
  end

  alias results run
end
