# frozen_string_literal: true

require 'state_machine'

class Substance
  state_machine :status, initial: :melt do
    state :melt
    state :freez
    state :boil
    state :condense
    state :sublime
    state :deposit

    event :status_up do
      transition melt: :freez, freez: :boil, boil: :condense, condense: :sublime, sublime: :deposit
    end

    event :status_down do
      transition deposit: :sublime, sublime: :condense, condense: :boil, boil: :freez, freez: :melt
    end
  end

  def set_status(status)
    @status = status
  end
end

subst = Substance.new
p subst.status # melt
subst.status_up
p subst.status # freez
subst.status_down
p subst.status # melt
subst.status_down
p subst.status # melt

subst.set_status('condense')
p subst.status # condense
subst.status_down
p subst.status # boil

subst.set_status('deposit')
p subst.status # deposit
subst.status_up
p subst.status # deposit
