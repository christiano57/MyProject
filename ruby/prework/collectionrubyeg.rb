class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end
  

  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

array_of_languages = [ruby, python, javascript, go, rust, swift, java]
  
array_of_languages.map! { | language | language.name + "!!!"}

array_printer(array_of_languages)
# "----------------"

#  aged_languages = array_of_languages.map do | language |
#  language = ProgrammingLanguage.new(language.name, language.age + 1, language.type)
#  language
# end
# puts "The programming languages aged one year are: "
# array_printer(aged_languages)

# languages_by_age = array_of_languages.take_while { | language | language.age > 10 }


# array_printer(languages_by_age)

# # languages_by_age.shuffle! 


# array_printer(languages_by_age)

# array_of_languages.delete_if { | language| language == java}

# array_printer(array_of_languages)