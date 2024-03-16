---
## Front matter
lang: ru-RU
title: Лабораторная работа №5
subtitle: Настройка рабочей среды
author:
  - Жукова А. А.
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 16 марта 2024

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
  
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
---

# Информация

## Докладчик

:::::::::::::: {.columns align=center}
::: {.column width="70%"}

  * Жукова Арина Александровна
  * Студент бакалавриата
  * НПИбд-03-23
  * Российский университет дружбы народов
  * [1132239120@rudn.ru](mailto:kulyabov-ds@rudn.ru)
  * <https://arinaalexzhukova.github.io/>

:::
::: {.column width="30%"}

![](./image/zhukova.jpg)

:::
::::::::::::::

# Вводная часть

## Актуальность

Использование Chezmoi во многом упрощает жизнь IT-специалиста:

- Сhezmoi позволяет управлять конфигурационными файлами (dotfiles) как кодом, что становится особенно полезным при работе на нескольких компьютерах или серверах. Это способствует удобству и единообразию рабочей среды
- Можно легко отследить изменения и контролировать версию конфигурационных файлов с помощью системы контроля версий (например, Git)
- Chezmoi упрощает создание резервных копий конфигураций и их восстановление при необходимости

## Цели и задачи

- Настроить пароль pass
- Подключить Chezmoi

## Материалы и методы

- Менеджер паролей pass
- Управление файлами конфигурации Chezmoi

## Содержание исследования

- Установка менеджера паролей pass
- Сохранение пароля
- Управление файлами конфигурации
- Установка дополнительного программного обеспечения
- Использование chezmoi на нескольких машинах
- Ежедневные операции c chezmoi

## Результаты

- Настроенная и управляемая рабочая среда, позволяющая управлять конфигурационными файлами на разных устройствах
- Повышенная безопасность паролей
- Упрощенное обновление конфигураций
- Понимание принципов безопасности и управления конфигурациями

:::

