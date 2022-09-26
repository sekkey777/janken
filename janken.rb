# あっち向いてほいのループ
# i=0の時ループする。勝負がつくとi=1を代入してループから抜ける。
i = 0
while i == 0 do
  
  # じゃんけんのループ
  # i=0の時ループする。勝負がつくとi=1を代入してループから抜ける。
  j = 0
  while j == 0 do
  
    # ■■■■■■■■■じゃんけんで出す手を選択■■■■■■■■■
    puts "じゃんけん..."
    puts "1（グー）2（チョキ）3（パー）4（やめる）"
    janken_me_num = gets.to_i
    
    # ■■■■■■■■■janken_meに自分が選択した手を代入■■■■■■■■■
    if janken_me_num == 1
      janken_me = "グー"
    elsif janken_me_num == 2
      janken_me = "チョキ"
    elsif janken_me_num == 3
      janken_me = "パー"
    elsif janken_me_num == 4
      puts "じゃんけんをやめます"
      exit
    end
    
    # ■■■■■■■■■janken_youに相手が選択した手をランダムに代入■■■■■■■■■
    janken_you_num = rand(1..3)
    
    if janken_you_num == 1
      janken_you = "グー"
    elsif janken_you_num == 2
      janken_you = "チョキ"
    elsif janken_you_num == 3
      janken_you = "パー"
    end
    
    # ■■■■■■■■■自分と相手の手を表示■■■■■■■■■
    puts "ポイ"
    puts "------------------------------------------------------------"
    puts "自分：#{janken_me}を出しました"
    puts "相手：#{janken_you}を出しました"
    puts "------------------------------------------------------------"
    
    # ■■■■■■■■■じゃんけんの勝敗を判定■■■■■■■■■
    if janken_me_num == janken_you_num
      puts "あいこです"
    elsif janken_me_num == 1
      if janken_you_num == 2
        winner = "自分"
        j = 1
        puts "自分の勝ちです"
      elsif janken_you_num == 3
        winner = "相手"
        j = 1
        puts "相手の勝ちです"
      end
    elsif janken_me_num == 2
      if janken_you_num == 1
        winner = "相手"
        j = 1
        puts "相手の勝ちです"
      elsif janken_you_num == 3
        winner = "自分"
        j = 1
        puts "自分の勝ちです"
      end
    elsif janken_me_num == 3
      if janken_you_num == 1
        winner = "自分"
        j = 1
        puts "自分の勝ちです"
      elsif janken_you_num == 2
        winner = "相手"
        j = 1
        puts "相手の勝ちです"
      end
    end
    puts "------------------------------------------------------------"
  end
  
  # ■■■■■■■■■あっち向いてほいで出す向きを選択■■■■■■■■■
  puts "あっち向いて..."
  puts "1（上）2（下）3（左）4（右）"
  attimuite_me_num = gets.to_i
  
  # ■■■■■■■■■attimuite_meに自分が選択した手を代入■■■■■■■■■
  if attimuite_me_num == 1
    attimuite_me = "上"
  elsif attimuite_me_num == 2
    attimuite_me = "下"
  elsif attimuite_me_num == 3
    attimuite_me = "左"
  elsif attimuite_me_num == 4
    attimuite_me = "右"
  end
  
  # ■■■■■■■■■attimuite_youに相手が選択した手をランダムに代入■■■■■■■■■
  attimuite_you_num = rand(1..4)
  
  if attimuite_you_num == 1
    attimuite_you = "上"
  elsif attimuite_you_num == 2
    attimuite_you = "下"
  elsif attimuite_you_num == 3
    attimuite_you = "左"
  elsif attimuite_you_num == 4
    attimuite_you = "右"
  end
  
  # ■■■■■■■■■自分と相手の向きを表示■■■■■■■■■
  puts "ホイ"
  puts "------------------------------------------------------------"
  puts "自分：#{attimuite_me}"
  puts "相手：#{attimuite_you}"
  puts "------------------------------------------------------------"
  
  # ■■■■■■■■■じゃんけんの勝敗を判定■■■■■■■■■
  if attimuite_me == attimuite_you
    puts "#{winner}の勝ちです"
    i = 1
  end
  
end