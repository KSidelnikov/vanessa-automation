﻿# language: ru
#parent uf:
@UF4_Библиотека_шагов
#parent ua:
@UA7_Работать_с_файлами_из_фич

@IgnoreOnCIMainBuild




Функционал: Проверка работы диалога выбора файла

Как разработчик
Я хочу чтобы можно было в режиме TestClient выбирать файлы через объект ДиалогВыбораФайла
Чтобы я мог эмулировать интерактивный выбор файлов


Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Интерактивное открытие файла
	Когда В панели разделов я выбираю "Основная"
	И в панели функций я выбираю "Справочник3"
	Тогда открылось окно "Справочник3"
	И в открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И я буду выбирать внешний файл "c:\temp\333.epf"
	И в открытой форме я нажимаю на кнопку с заголовком "Открыть файл"
	Тогда в логе сообщений TestClient есть строки:
		|'Был выбран файл c:\temp\333.epf'|
		


Сценарий: Отмена выбора файла
	Когда В панели разделов я выбираю "Основная"
	И в панели функций я выбираю "Справочник3"
	Тогда открылось окно "Справочник3"
	И в открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И я отменяю выбор файла
	И я очищаю окно сообщений пользователю
	И в открытой форме я нажимаю на кнопку с заголовком "Открыть файл"	
	Тогда в окне сообщений пользователю нет сообщений