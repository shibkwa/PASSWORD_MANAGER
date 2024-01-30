#!/bin/bash

# GPGのキー設定
GPG_KEY="test@co.jp"

while true; do
  echo "パスワードマネージャーへようこそ！"
  echo "次の選択肢から入力してください(Add Password/Get Password/Exit)："
  read choice
  case "$choice" in
    "Add Password" )
      echo "サービス名を入力してください："
      read service
      echo "ユーザー名を入力してください："
      read user
      echo "パスワードを入力してください："
      read password
      echo "$service:$user:password" >> auth.txt
      # ファイルの暗号化【gpg -e -r 「受信者のメールアドレス」「ファイル名」】
      gpg -e -r "$GPG_KEY" auth.txt
      echo "パスワードの追加は成功しました。"
      ;;
    "Get Password" )
      echo "サービス名を入力してください："
      read your_service
      # ファイルを復号【gpg -d 「ファイル名」】してtempファイルに格納
      gpg -d auth.txt.gpg > temp_auth.txt
      found=0
        # readの読み込みは改行文字(\n)まで。
        while IFS=: read -r service user password; do
          if [ "$service" = "$your_service" ]; then
            echo "サービス名：$service"
            echo "ユーザー名：$user"
            echo "パスワード：$password"
            found=1
            break
          #fiはif文の終わり
          fi
        done < temp_auth.txt
        # 読み通り後に削除
        rm temp_auth.txt
          if [ $found -ne 1 ]; then
          echo "そのサービスは登録されていません。"
          fi
          ;;
    "Exit")
      echo "Thank you!"
      break
      ;;
    *)
      echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
      ;;
  esac
done
