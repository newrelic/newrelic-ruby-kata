# new-relic-kata-setup

## English

### Script to set up the kata training environment

Enter the following script in Amazon Linux 2 EC2 Userdata.

``` sh:Userdata
#!/bin/bash  
  
curl -L https://raw.githubusercontent.com/newrelic/newrelic-ruby-kata/master/cloud9/userdata.sh | bash
```

Connect Cloud9 to the started Instance,
1.kata-install.sh,
2.kata-setup.sh
Ruby-kata is set up by executing the above in order.
Running kata-start.sh starts the Kata environment.

## Japanise

### kataトレーニング環境をセットアップするスクリプト

Amazon Linux 2 EC2 Userdataに以下のスクリプトを入力します。

``` sh:Userdata
#!/bin/bash  
  
curl -L https://raw.githubusercontent.com/newrelic/newrelic-ruby-kata/master/cloud9/userdata.sh | bash
```

起動したInstanceにCloud9を接続し、
1.kata-install.sh、
2.kata-setup.sh  
上記を順番に実行するとRuby-kataがセットアップされます。  
kata-start.sh を実行するとKata環境がスタートします。
