# newrelic-ruby-kata

## UseHeroku

Using New Relic and Heroku, see how many things you can find and fix to make this app perform fast!

### Step 1

Get the code. The code is waiting to be forked on [Github](https://github.com/newrelic/newrelic-ruby-kata)

### Step 2

Load the sample DB locally:

    bundle exec rake db:create
    pg_restore --verbose --clean --no-acl --no-owner -h localhost -U $USER -d newrelic-ruby-kata_development public/sample-data.dump
    bundle exec rails s

### Step 3

Deploy your app to Heroku, and load the database:

First,

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

Then, you can load the sample data via:

    heroku addons:create heroku-postgresql:hobby-dev
    heroku addons:create memcachier
    heroku config:set NEW_RELIC_APP_NAME=<NAME>
    heroku pg:credentials DATABASE_URL
    pg_restore --verbose --clean --no-acl --no-owner -h <HOSTNAME> -U <USER> -d <DATABASE> -p <PORT> --password public/sample-data.dump

### Step 4

You can watch a [video on getting started](https://learn.newrelic.com/courses/intro_apm/performance_apm) with the New Relic agent to help get you started. The New Relic agent will help you find and solve the performance issues in this application as well as help you see the complete impact of your changes.

### Step 5

Fix the code / Solve as many of the Katas as you can. There are seven distinct Katas in this application that can be torn apart and fixed by using your awesome dev abilities and the deep metrics that New Relic provides.

### Step 6

Let us know how you did, what you liked or disliked, what helped you find problems or what were the challenges, what you like about New Relic and what you don't - we just want to hear from you and see what we can do to get better. We'll even send you something for demonstrating your geek super powers when you complete the Kata - just provide us with your [thoughts and a link to your forked repo](https://support.newrelic.com/home).

## Use Amazon Linux2 on Cloud9

### Step 2.1

Set up a script in User Data to launch an Amazon Linux 2 Instance.

    #!/bin/bash  
  
    curl -L https://raw.githubusercontent.com/newrelic/newrelic-ruby-kata/master/cloud9/userdata.sh | bash

### Step 2.2

Allow the following access in the security group:

Port 22 from the [Cloud9 IP range](https://docs.aws.amazon.com/cloud9/latest/user-guide/ip-ranges.html) of the region where the Instance was built</br>
3000 port from AnyIP address</br>
Port 22 from client</br>

### Step 2.3

EC2Instance will be launched with steps 1 and 2 of [Create the SSH Environment](https://docs.aws.amazon.com/cloud9/latest/user-guide/create-environment-ssh.html) completed.
Perform the third and subsequent steps to build Cloud9.

### Step 2.4

Connect Cloud9 to the started Instance,
1.kata-install.sh,
2.kata-setup.sh
Ruby-kata is set up by executing the above in order.
Running kata-start.sh starts the Kata environment.

## Amazon Linux 2 上の Cloud9 での利用

### ステップ 2.1

UserDataに以下のスクリプトを入力してAmazon Linux2 のインスタンスを起動します。

    #!/bin/bash  
  
    curl -L https://raw.githubusercontent.com/newrelic/newrelic-ruby-kata/master/cloud9/userdata.sh | bash

### ステップ 2.2

以下のセキュリティｰグループを開放します。:

[Cloud9 のIPレンジ](https://docs.aws.amazon.com/ja_jp/cloud9/latest/user-guide/ip-ranges.html) からのSSHポート</br>
利用クライアントからのTCP 3000ポート</br>
利用クライアントからのSSHポート</br>

### ステップ 2.3

[SSH 環境 の作成](https://docs.aws.amazon.com/ja_jp/cloud9/latest/user-guide/create-environment-ssh.html) の手順1，2が完了した状態のEC2インスタンスが起動します。手順3以降の作業を行いCloud9環境を完成させます。

### ステップ 2.4

1.kata-install.sh、
2.kata-setup.sh  
上記を順番に実行するとRuby-kataがセットアップされます。  
kata-start.sh を実行するとKata環境がスタートします。
