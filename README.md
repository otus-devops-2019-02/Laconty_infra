# Laconty_infra
Laconty Infra repository

## Задание 3
Подключение к внутреннему серверу через внешний сервер

```bash
ssh -i ~/.ssh/otus-gcp -A appuser@35.228.143.158 -t ssh 10.166.0.3
```

bastion_IP = 35.228.143.158
someinternalhost_IP = 10.166.0.2

## Задание 4

testapp_IP = 35.228.166.85
testapp_port = 9292


## Задание 6
#### Terraform-1
- Установка терраформ
- Создание конфигов по созданию и настройке VM
- Создание VM используя terraform комманды
