# def point_post
#   count = 0
#   while count < 10
#     point = gets.to_i #.to_iを意図的に削除する
#     p point
#     exit
#     if point < 1
#       puts "エラーです"
#     elsif point > 5
#       puts "エラーです"
#     else
#       puts "ありがとうございます"
#     end
#     count = count + 1
#   end
# end

# point_post # メソッド名は正しいものに修正しておいてください

# 入力値を変数に格納する
# assign_word = gets.chomp
# 2.times do
#   if assign_word == "Tom"
#     puts "My name is #{assign_word}"
  
#   elsif assign_word == "Ruby"
#     puts "Language is #{assign_word}"
#   end
# end

# クラスの確認
# target =gets.class
# puts "this is #{target}"
# target =gets.to_i.class
# puts "this is #{target}"

# x1 = gets
# puts "This is a #{x1.class} class"

# x2 = gets.to_i
# puts "This is an #{x2.class} class"

# puts 0b1000

# greeting = "Hello"
# puts <<'EOS' #シングルクォーテーションで囲う
#   "#{greeting}"
#   World
# EOS

# hello = gets.chomp
# world = gets.chomp
# puts "#{hello}#{world}"

# value = ""
# if value
#   puts "真です"
# elsif
#   puts "偽です"
# end

# compare1 =gets
# compare2 =gets
# if compare1 != compare2
#     puts "偽です"
# end


# ＜評価ポイントとコメントを受け取って表示するプログラム＞
# while true
#   puts "1から5の数字で評価を入力してください。終了する場合は「6」を入力してください"
#   evaluate =gets.to_i
#   puts evaluate.class

#   if evaluate == 6
#     puts "終了します"
#     break

#   elsif evaluate != 0
#     comments = gets
#     puts "あなたのポイント：#{evaluate}あなたのコメント：#{comments}"
  
#   else
#     puts "数字を入力してください"
  
#   end
# end

# list =[]
# while true
#   hash ={
#     point: gets.to_i,
#     comments: gets.chomp
#   }
#   list << hash
#   puts "ポイントは#{hash[:point]}"
# end


# while true
#   puts "1から5の数字で評価を入力してください。終了する場合は「6」を入力してください"
#   point = gets.to_i
#   puts point.class

#   if point == 6
#     puts "終了します"
#     break

#   elsif point != 0
#     puts "コメントを入力してください"
#     comment = gets
#     puts "あなたのポイント: #{point}"
#     puts "あなたのコメント: #{comment}"

#   else
#     puts "数字を入力してください"

#   end
# end

# while true
#   comment = gets.chomp
#   if comment != "end"
#       puts "あなたのコメント：#{comment}"
#   elsif comment == "end"
#       puts "終了します"
#       break
#   end
# end

# object = {
#   name:"tanaka",
#   age:35
# }

# puts object[:name]

# output = ["Tom","John","Alice"]

# while true
#   index =gets.to_i
#   if index != 100
#     puts output[index]
#   elsif index == 100
#     puts "終了"
#     break
#   end
# end

# array =["aaa","bbb"]
# array[0] ="ccc"
# num = 5
# str ="sss"
# hash = {
#   name:"Tom",
#   age:25
# }
# puts array.unshift(num,str,hash)

# array =["Tom", "John", "Alice"]
# add =gets.chomp
# array << add
# puts array.last
# puts array.length

# hash ={
#   name: "tanaka",
#   age: 30
# }
# hash[:adress] ="Tokyo"
# puts hash[:name]
# puts "私の名前は#{hash[0]}です"

# number = gets.to_i

# # if number >= 5
# #   puts "High"
# # else
# #   puts "Low"
# # end

# number >= 5 ? (puts "High") : (puts "low")

# range = 1..10
# array = range.to_a
# puts array

# age = 22
# case age
# when 1..10
#     puts "当てはまりません"
# else
#     puts "当てはまります"
# end

# for num in 0..5 do
#     if num == 3
#       next
#     end
#     puts num
#   end

# 0.step(20,3) do |aaa|
#     puts aaa
# end

# list = [1, 2, 3]
# mapped = list.map do |n|
#   n * 2
# end
# puts "#{mapped}"

# array = ["a", "b", "c", "d", "e"]
# mapped = array.map do {|str| str.upcase}

# puts "#{mapped}"


# 5.times do
#     age = gets.to_i
#     def elderly?(age)
#         age >= 65 ? true : false
#     end
#     puts elderly?(age)
#   end

# ----------最後まで使い回すプログラム----------

def evaluation(point)
    while true
        if point <= 0 || point > 5
            puts "1から5で入力してください" 
            point = gets.to_i
        else 
            puts "コメントを入力してください"
            comment = gets
            post = "ポイント：#{point}　コメント：#{comment}"
            File.open("data.txt", "a") do |file|
              file.puts(post)
            end
            break
        end
    end
end

def comfirmation()
    File.open("data.txt", "r") do |read_file|
        read_file.each_line do |line|
            puts line
        end
    end
end


while true
    puts "実施したい処理を選択してください"
    puts "1:評価ポイントとコメントを入力する"
    puts "2:今までの結果を確認する"
    puts "3:やめる"
    num = gets.to_i
  
    case num
    when 1
      puts "1から5で評価を入力してください"
      point = gets.to_i
      puts evaluation(point)
    #   while true
    #     if point <= 0 || point > 5
    #       puts "1から5で入力してください"
    #       point = gets.to_i
    #     else
    #       puts "コメントを入力してください"
    #       comment = gets
    #       post = "ポイント：#{point}　コメント：#{comment}"
    #       File.open("data.txt", "a") do |file|
    #         file.puts(post)
    #       end
    #       break
    #     end
    #   end
    when 2
        puts "これまでの結果"
        puts comfirmation()
        # File.open("data.txt", "r") do |read_file|
        #     read_file.each_line do |line|
        #         puts line
        #     end
        # end
    when 3
      puts "終了します"
      break
    else
      puts "1から3で入力してください"
    end
end




# count = 0
# while true
#     temp = gets.to_i
#     if count < 6
#         case temp
#         when -10..10
#             puts "寒いです"
#         when 11..15
#             puts "涼しいです"
#         when 16..20
#             puts "快適です"
#         when 21..29
#             puts "暑いです"
#         when 30..40
#             puts "猛暑です"
#         else 
#             puts "異常気象です"
#         end
#         count += 1
#     else count ==8
#         break
#     end
# end
    


# while true
#     temp = gets.to_i
#     case temp
#     when -10..10
#         puts "寒いです"
#     when 11..15
#         puts "涼しいです"
#     when 16..20
#         puts "快適です"
#     when 21..29
#         puts "暑いです"
#     when 30..40
#         puts "猛暑です"
#     else 
#         puts "異常気象です"
#     end
# end

# test =gets.to_i
# if test >= 1
#     puts "test"
