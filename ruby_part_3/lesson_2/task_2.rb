# frozen_string_literal: true

class Unit
  COUNT_LIMITS = {
    manager: 1,
    front_end_dev: 2,
    back_end_dev: 2,
    tester: 1,
    designer: 1
  }.freeze

  attr_accessor :name, :team
  attr_reader :roles_count

  def initialize
    @team = {}

    @roles_count = {
      manager: 0,
      front_end_dev: 0,
      back_end_dev: 0,
      tester: 0,
      designer: 0
    }
  end

  def add_employee(fio, role, tab_no)
    if @roles_count[role] < COUNT_LIMITS[role]
      if @team[tab_no]
        'Employee with thish TAB_NO already exists, delete it first!'
      else
        @team.merge!(tab_no => Employee.new(fio, role))
        @roles_count[role] += 1
        'Employee added succsesfuly!'
      end
    else
      'Can not add Employee, NO LIMITS!'
    end
  end

  def del_employee(tab_no)
    if @team[tab_no]
      @roles_count[@team[tab_no].role] -= 1
      @team.tap { |x| x.delete(tab_no) }
      'Employee deleted succsesfuly!'
    end
    'No employee with this TAB_NO!'
  end

  class Employee
    attr_accessor :fio, :role

    def initialize(fio, role)
      @fio = fio
      @role = role
    end
  end
end

unit1 = Unit.new

unit1.add_employee('Manager', :manager, :tab1)
unit1.add_employee('Front End Developer 1', :front_end_dev, :tab2)
unit1.add_employee('Front End Developer 2', :front_end_dev, :tab3)
unit1.add_employee('Back End Developer 1', :back_end_dev, :tab4)
unit1.add_employee('Back End Developer 2', :back_end_dev, :tab5)
unit1.add_employee('Tester', :tester, :tab6)
unit1.add_employee('Designer', :designer, :tab7)

p unit1.team
p unit1.roles_count

unit1.del_employee(:tab2)
unit1.del_employee(:tab3)
p unit1.team
p unit1.roles_count
