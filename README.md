# Laconty_infra
Laconty Infra repository

## Задание 5
Подключение к внутреннему серверу через внешний сервер

```bash
ssh -i ~/.ssh/otus-gcp -A appuser@35.228.143.158 -t ssh 10.166.0.3
```

bastion_IP = 35.228.143.158
someinternalhost_IP = 10.166.0.2
