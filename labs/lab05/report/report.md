---
## Front matter
title: "Отчёт по лабораторной работе №5"
subtitle: "Настройка рабочей среды."
author: "Жукова Арина Александровна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Цель данной работы заключается в настройке рабочей среды.

# Теоритическое введение

## Менеджер Паролей pass
- Основные свойства:
  - Данные хранятся в файловой системе в зашифрованном виде с помощью GPG-ключа.
- Структура базы паролей:
  - Может быть произвольной, предполагая использование напрямую или через дополнительное программное обеспечение.

## Реализации
- Утилиты командной строки:
  - pass: классическая и gopass: Go-реализация с дополнительными функциями.
- Графические интерфейсы:
  - qtpass: интерфейс к pass, gopass-ui: интерфейс к gopass, webpass: веб-интерфейс к pass.
- Приложения для Android:
  - Password Store: для управления паролями, OpenKeychain: операции с ключами PGP.
- Пакеты для Emacs:
  - Pass Mode: режим для управления и редактирования записей.
  - Интерфейсы helm-pass и ivy-pass для удобства при работе.

## Управление файлами конфигурации с Chezmoi
- Основная информация:
  - Управление файлами конфигурации домашнего каталога пользователя.
  - Конфигурация и рабочие файлы хранятся в каталогах, специфичных для локальной машины.
- Chezmoi:
  - Позволяет управлять файлами конфигурации, клонируя их из репозитория и поддерживая их состояние на разных машинах.
  - Состояние файлов хранится в каталоге ~/.local/share/chezmoi.
  
# Выполнение лабораторной работы

## Менеджер паролей pass

### Установка на Fedora

- Установка пакетов pass и pass-otp: dnf install pass pass-otp (рис. [-@fig:001]).

![Установка pass](image/Снимок экрана 2024-03-16 190257.pgp){#fig:001 width=70%}

- Установка gopass: dnf install gopass (рис. [-@fig:002]).

![Установка gopass](image/Снимок экрана 2024-03-16 190435.pgp){#fig:002 width=70%}


### Настройка Ключей GPG

- Просмотр списка ключей: gpg --list-secret-keys   (рис. [-@fig:003]).

![Просмотр списка ключей](image/Снимок экрана 2024-03-16 190632.pgp){#fig:003 width=70%}

- Инициализация хранилища: pass init <gpg-id or email>  (рис. [-@fig:004]).

![Инициализация хранилища](image/Снимок экрана 2024-03-16 190705.pgp){#fig:004 width=70%}

### Синхронизация с Git

- Инициализация структуры Git: pass git init  (рис. [-@fig:005]).

![Инициализация структуры Git](image/Снимок экрана 2024-03-16 190750.pgp){#fig:005 width=70%}

- Задание адреса репозитория на хостинге: pass git remote add origin git@github.com:<git_username>/<git_repo>.git  (рис. [-@fig:006]).

![Задание адреса](image/Снимок экрана 2024-03-16 190800.pgp){#fig:006 width=70%}

- Синхронизация изменений: pass git pull  (рис. [-@fig:007]).

![Синхронизация изменений](image/Снимок экрана 2024-03-16 190808.pgp){#fig:007 width=70%}


pass git push  (рис. [-@fig:008]).

![Синхронизация изменений](image/Снимок экрана 2024-03-16 190828.pgp){#fig:008 width=70%}

### Настройка интерфейса с браузером

- Для взаимодействия с браузером используется интерфейс Native Messaging  (рис. [-@fig:009]-[-@fig:010]).

![Установка доп. обесепечения](image/Снимок экрана 2024-03-16 190917.pgp){#fig:009 width=70%}

![Установка доп. обесепечения](image/Снимок экрана 2024-03-16 190929.pgp){#fig:010 width=70%}

### Сохранение пароля

- Добавить новый пароль pass insert (рис. [-@fig:011]).

![Добавление пароля](image/Снимок экрана 2024-03-16 191120.pgp){#fig:011 width=70%}

- Отобразите пароль для указанного имени файла pass [OPTIONAL DIR]/[FILENAME] (рис. [-@fig:012]).

![Отображение пароля](image/Снимок экрана 2024-03-16 191044.pgp){#fig:012 width=70%}

- Замените существующий пароль:

pass generate --in-place FILENAME (рис. [-@fig:013]).

![Синхронизация изменений](image/Снимок экрана 2024-03-16 191127.pgp){#fig:013 width=70%}

## Управление файлами конфигурации

### Дополнительное программное обеспечение

- Установка дополнительного ПО на Fedora  (рис. [-@fig:014]).

![Установка доп. обесепечения](image/Снимок экрана 2024-03-16 191156.pgp){#fig:014 width=70%}

- Установка шрифтов  (рис. [-@fig:015]-[-@fig:017]).

![Установка шрифтов](image/Снимок экрана 2024-03-16 191218.pgp){#fig:015 width=70%}

![Установка шрифтов](image/Снимок экрана 2024-03-16 191835.pgp){#fig:016 width=70%}

![Установка шрифтов](image/Снимок экрана 2024-03-16 191903.pgp){#fig:017 width=70%}

### Установка chezmoi

- с помощью wget: sh -c "$(wget -qO- chezmoi.io/get)"  (рис. [-@fig:018]).

![Установка chezmoi](image/Снимок экрана 2024-03-16 191959.pgp){#fig:018 width=70%}


### Создание собственного репозитория с использованием утилит командной строки

- Создание шаблонного репозитория  (рис. [-@fig:019]).

![Создание репозитория](image/Снимок экрана 2024-03-16 192035.pgp){#fig:019 width=70%}

### Подключение репозитория к системе 

- Инициализация chezmoi репозиторием dotfiles: chezmoi init git@github.com:<username>/dotfiles.git  (рис. [-@fig:020]).

![Инициализация](image/Снимок экрана 2024-03-16 192118.pgp){#fig:020 width=70%}

chezmoi diff  (рис. [-@fig:021]).

![Проверка изменений](image/Снимок экрана 2024-03-16 192812.pgp){#fig:021 width=70%}

chezmoi apply -v  (рис. [-@fig:022]).

![Запуск](image/Снимок экрана 2024-03-16 193005.pgp){#fig:022 width=70%}


### Использование chezmoi на нескольких машинах

- Инициализация на второй машине через SSH chezmoi init git@github.com:<username>/dotfiles.git  (рис. [-@fig:023]).

![Инициализация](image/Снимок экрана 2024-03-16 192118.pgp){#fig:023 width=70%}

chezmoi diff  (рис. [-@fig:024]).

![Проверка изменений](image/Снимок экрана 2024-03-16 192812.pgp){#fig:024 width=70%}

chezmoi apply -v  (рис. [-@fig:025]).

![Запуск](image/Снимок экрана 2024-03-16 193005.pgp){#fig:025 width=70%}

### Ежедневные операции с Chezmoi

- Извлеки и примени последние изменения из репозитория: chezmoi update  (рис. [-@fig:026]).

![Применение последних обновлений](image/Снимок экрана 2024-03-16 193029.pgp){#fig:026 width=70%}

- Извлечение изменений для просмотра без применения: chezmoi git pull -- --autostash --rebase && chezmoi diff  (рис. [-@fig:027]).

![Просмотр без применения](image/Снимок экрана 2024-03-16 193036.pgp){#fig:027 width=70%}

- Применение изменений chezmoi apply (рис. [-@fig:028]).

![Просмотр без применения](image/Снимок экрана 2024-03-16 193104.pgp){#fig:028 width=70%}


### Автоматическое фиксирование и отправка изменений в репозиторий

Для включения автоматической фиксации и отправки изменений добавь следующее в ~/.config/chezmoi/chezmoi.toml  (рис. [-@fig:029]).

![Включение автоматической фиксации и отправки изменений](image/Снимок экрана 2024-03-16 193133.pgp){#fig:029 width=70%}

Chezmoi будет фиксировать изменения и отправлять их в репозиторий. 

# Выводы

Работа с шаблонами и файлами конфигурации в Chezmoi предоставляет гибкость и удобство в управлении конфигурациями между различными машинами. При 

# Список литературы{.unnumbered}

::: {#refs}
:::
