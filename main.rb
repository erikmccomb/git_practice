require 'colorize'
require 'pry'

def puts_git(cmd)
  puts `git #{cmd} -h`
end

def menu
  puts 'Main Menu'.colorize(:light_blue)
  puts '1: Enter a Git command.'
  puts '2: exit.'.colorize(:red)
  choice = gets.to_i
  case choice
    when 1
      puts 'Enter a Git command'
      puts_git(gets.strip)
    when 2
      puts 'Thanks for using the git command'
      exit
    else
      puts 'Invalid choice!'
      menu
  end
  menu
end

menu