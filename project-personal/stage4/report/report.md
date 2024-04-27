---
## Front matter
title: "Отчет Индивидуальный проект"
subtitle: "Этап №4"
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

Добавить к сайту ссылки на научные и библиометрические ресурсы.

# Задание

1. Зарегистрироваться и разместить ссылку на сайт eLibrary.
2. Зарегистрироваться и разместить ссылку на сайт Google Scholar.
3. Зарегистрироваться и разместить ссылку на сайт ORCID.
4. Зарегистрироваться и разместить ссылку на сайт Mendeley.
6. Зарегистрироваться и разместить ссылку на сайт github.
7. Зарегистрироваться и разместить ссылку на сайт Academia.edu.
8. Зарегистрироваться и разместить ссылку на сайт arXiv.
9. Зарегистрироваться и разместить ссылку на сайт ResearchGate.
10. Сделать пост по прошедшей неделе.
11. Добавить пост на тему: "Оформление отчета в Markdown".

# Выполнение индивидуального проекта

После того, как мы зарегистрировались на всех ресурсах, приступим к добавлению ссылок на наш сайт. Для этого мы должны проделать данный путь: "work", "blog", "content", "authors", "admin"(рис. [-@fig:001]).

![Открытие нужного файла для редактирования](image/Снимок экрана от 2024-04-27 22-38-42.png){ #fig:001 width=100% }

Внутри каталога "admin" мы открываем файл "_index.md". В блоке "social" меняем icon_pack на ai и пишем название нужных нам логотипов, также добавляем ссылки на ресурсы (рис. [-@fig:002]).

![Добавление ссылок](image/Снимок экрана от 2024-04-27 21-46-31.png){ #fig:002 width=70% }

Создаём каталоги для новых постов и назовём их: "Week 22-28.04" и "Отчёт в Markdown". Чтобы создать эти каталоги нужно проделать следующий путь: "work", "blog", "content", "post" (рис. [-@fig:003]).

![Создание каталогов для новых постов](image/Снимок экрана от 2024-04-27 22-48-50.png){ #fig:003 width=100% }

Добавим информацию для наших постов, которую мы написали заранее (рис. [-@fig:004]).

![Добавление информации для поста "Оформление отчёта в Markdown"](image/Снимок экрана от 2024-04-27 22-51-14.png){ #fig:004 width=100% }

Чтобы вся наша информация выгрузилась на сайт, откроем в каталоге "blog" терминал и запустим команду hugo (рис. [-@fig:005]).

![Запуск команды hugo](image/Снимок экрана от 2024-04-27 22-19-18.png){ #fig:005 width=100% }

Как только команда hugo выполнилась перейдём в подкаталог "public" и проделаем указанные на скриншоте действия (рис. [-@fig:006]-[-@fig:066]). Вторым этапом проделаем все те же самые действия, но уже в каталоге "blog" (рис. [-@fig:007]).

![Выгрузка из подкаталога "public"](image/Снимок экрана от 2024-04-27 22-19-31.png){ #fig:006 width=100% }

![Выгрузка из подкаталога "public"](image/Снимок экрана от 2024-04-27 22-19-42.png){ #fig:066 width=100% }

![Выгрузка из каталога "blog"](image/Снимок экрана от 2024-04-27 22-20-35.png){ #fig:007 width=100% }

Последним шагом перейдём на наш сайт и посмотрим итог работы (рис. [-@fig:008]-[-@fig:009]).

![Ссылки на научные и библиометрические ресурсы](image/Снимок экрана 2024-04-27 222210.png){ #fig:008 width=100% }

![Новые посты](image/Снимок экрана 2024-04-27 222236.png){ #fig:009 width=100% }

# Выводы

В ходе выполнения четвёртого этапа индивидуального проекта мы научились добавлять к сайту ссылки на научные и библиометрические ресурсы.

# Список литературы{.unnumbered}

::: {#refs}
:::
