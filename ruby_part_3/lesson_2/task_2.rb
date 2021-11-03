# frozen_string_literal: true

class Unit
  COUNT_LIMITS = {
    manager: 1,
    front_end_dev: 2,
    back_end_dev: 2,
    tester: 1,
    designer: 1
  }.freeze

  attr_accessor :team
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
        0
      else
        @team.merge!(tab_no => Employee.new(fio, role))
        @roles_count[role] += 1
        'Employee added succsesfuly!'
        1
      end
    else
      'Can not add Employee, NO LIMITS!'
      0
    end
  end

  def del_employee(tab_no)
    if @team[tab_no]
      @roles_count[@team[tab_no].role] -= 1
      @team.tap { |x| x.delete(tab_no) }
      'Employee deleted succsesfuly!'
      return 1
    end
    'No employee with this TAB_NO!'
    0
  end

  def show_team
    arr = []
    @team.map { |_key, value| arr << value.fio }
    puts arr.sort
  end

  def show_team_by_role(role)
    arr = []
    @team.select { |_key, value| value.role == role }
         .map { |_key, value| arr << value.fio }
    puts arr.sort
  end

  def show_team_info
    puts '---------- TEAM INFO --------------'
    puts 'Employees: '
    @team.each_with_index { |(_key, value), index| puts "#{index + 1}. #{value.fio} -> #{value.role}" }
    puts 'Roles count:'
    puts @roles_count
    puts '-----------------------------------'
  end

  def change_employee_fio(tab_no, new_fio)
    @team[tab_no].fio = new_fio
  end

  def change_employee_role(tab_no, new_role)
    if @roles_count[new_role] < COUNT_LIMITS[new_role]
      old_role = @team[tab_no].role
      @team[tab_no].role = new_role
      @roles_count[new_role] += 1
      @roles_count[old_role] -= 1
    else
      'Can not change role! No limits !!!'
      0
    end
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

# Add employees
unit1.add_employee('Иванов Иван Иванович', :manager, :tab1)
unit1.add_employee('Петров Петр Петрович', :front_end_dev, :tab2)
unit1.add_employee('Сидоров Сидор Сидорович', :front_end_dev, :tab3)
unit1.add_employee('Семенов Семен Семенович', :back_end_dev, :tab4)
unit1.add_employee('Васильев Василий Васильевич', :back_end_dev, :tab5)
unit1.add_employee('Алексеев Алексей Алексеевич', :tester, :tab6)
unit1.add_employee('Дмитриев Дмитрий Дмитриевич', :designer, :tab7)

# Show all
unit1.show_team_info

# Delete employees
unit1.del_employee(:tab2)
unit1.del_employee(:tab3)
puts 'Delete Employees with tab2 and tab3'

# Show all
unit1.show_team_info

# Show team FIO, sorting
puts 'Show FIO sorting:'
unit1.show_team

# Show team by role TESTER
puts 'Tester:'
unit1.show_team_by_role(:tester)

puts 'Back End Developers:'
unit1.show_team_by_role(:back_end_dev)

# Change fio
puts 'Change fio TAB1 to Иванов'
unit1.change_employee_fio(:tab1, 'Иванов')
unit1.show_team_info

# Change role
puts 'Change role TAB1 to Front End'
unit1.change_employee_role(:tab1, :front_end_dev)
unit1.show_team_info
