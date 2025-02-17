﻿# language: ru

@lessons

Функционал: Интерактивная справка. Стабилизация выполнения тестов.

Сценарий: Стабилизация выполнения тестов

	* Привет! В этом уроке я расскажу тебе про то какие настройки влияют на стабильность выполнения сценариев. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		
	* Эти настройки находятся тут.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаВыполнениеСценариев' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаПодсистемаСтабилизацияВыполненияТестов' UI Automation
		И Пауза 1
		И я вращаю колесо мыши "Back"
		И Пауза 1

		И я делаю подсветку нескольких элементов VA с их заголовком "Стабилизация выполнения тестов" UI Automation
			| 'Имя'                                                           |
			| 'КоличествоПопытокВыполненияСценария'                           |
			| 'ОтключатьДляПолейВозможностьЗатиранияТекстаПриСерверномВызове' |
			| 'КоличествоПопытокВыполненияДействия'                           |
			| 'КоличествоСекундПоискаОкна'                                    |
			| 'ТаймаутДляАсинхронныхШагов'                                    |
			| 'БезопасноеВыполнениеШагов'                                     |
			| 'ПаузаПриОткрытииОкна'                                          |
			| 'МаксимальноеВремяВыполненияДействия'                           |

	* Данное поле устанавливает количество попыток выполнения одного сценария.
		И я делаю подсветку нескольких элементов VA с их заголовком "Количество попыток выполнения сценария" UI Automation
			| 'Имя'                                 | 'Тип' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'КоличествоПопытокВыполненияСценария' | ''    | ''                           | 'Ложь'                         |
	* По умолчанию в поле указано значение один.
	* Если указано значение более одного, тогда если сценарий не был выполнен успешно, будет выполнено несколько попыток запустить сценарий.

	
	* Продолжим. Этот флаг управляет тем, нужно ли автоматически отключать возможность затирания текста введенного в поле.
		И я делаю подсветку нескольких элементов VA с их заголовком "Отключение затирания текста" UI Automation
			| 'Имя'                                                           | 'Тип' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ОтключатьДляПолейВозможностьЗатиранияТекстаПриСерверномВызове' | ''    | ''                           | 'Ложь'                         |
	* Тут нужно рассказать по подробнее.
	* Существует проблема, что при синхронизации состояния формы после завершения серверного вызова, может затираться текст, который в данный момент редактирует пользователь.
	* В тэстах это может проявляться так, что тест ввёл значение в поле, но до того как он начал работать с другим полем данное значение было возвращено в предыдущее состояние.
	* Данная опция включает механизм, когда свойство "ОбновлениеТекстаРедактирования" у полей формы, будет изменяться после вызова шага Тогда открылось окно
		И я делаю подсветку нескольких элементов VA с их заголовком "Отключение затирания текста" UI Automation
			| 'Имя'                                                           | 'Тип' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ОтключатьДляПолейВозможностьЗатиранияТекстаПриСерверномВызове' | ''    | ''                           | 'Ложь'                         |
	* Важный момент. Для работы опции в базе клиента тестирования должно быть установлено расширение VAExtension.
	
	
	
	* Продолжим. Данное поле устанавливает количество попыток для выполнения действия во время работы сценария.
		И я делаю подсветку нескольких элементов VA с их заголовком "Количество попыток выполнения действия" UI Automation
			| 'Имя'                                 | 'Тип' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'КоличествоПопытокВыполненияДействия' | ''    | ''                           | 'Ложь'                         |

	* Если в поле указано значение больше одного, то это означает, что если действие было выполнено неуспешно, то оно будет выполнено ещё раз через одну секунду.
	* Под действием тут подразумевается простое действие с элементом формы такое как установка текста в поле, нажатие на кнопку и так далее.
	* При работе тестов в CI контуре рекомендуется увеличивать это значение, чтобы снизить количество ложных срабатываний тестов.
		И я делаю подсветку нескольких элементов VA с их заголовком "Количество попыток выполнения действия" UI Automation
			| 'Имя'                                 | 'Тип' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'КоличествоПопытокВыполненияДействия' | ''    | ''                           | 'Ложь'                         |

	

	
	
	* Продолжим. Это поле управляет тем сколько секунд будет происходить ожидание появления нового окна.
		И я делаю подсветку нескольких элементов VA с их заголовком "Ожидание появления окна" UI Automation
			| 'Имя'                        | 'Тип' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'КоличествоСекундПоискаОкна' | ''    | ''                           | 'Ложь'                         |
	* При работе тестов в CI контуре также рекомендуется увеличивать это значение.


	* Продолжим. Это поле управляет тем какой таймаут будет при выполнении асинхронных шагов.
		И я делаю подсветку нескольких элементов VA с их заголовком "Таймаут для асинхронных шагов" UI Automation
			| 'Имя'                        | 'Тип' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ТаймаутДляАсинхронныхШагов' | ''    | ''                           | 'Ложь'                         |
	* Асинхронными шагами называются шаги, которые ждут какого-либо события в течение скольки-то секунд.
	* При выполнении тестов таймаут таких шагов будет вычислен как максимум данной настройки и значения, которое было передано в шаг.
	* При работе тестов в CI контуре также рекомендуется увеличивать это значение.
		И я делаю подсветку нескольких элементов VA с их заголовком "Таймаут для асинхронных шагов" UI Automation
			| 'Имя'                        | 'Тип' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ТаймаутДляАсинхронныхШагов' | ''    | ''                           | 'Ложь'                         |
	
	* Данное поле позволяет задать паузу, которая будет добавлена в шаги, проверяющие открытие нового окна.
		И я делаю подсветку нескольких элементов VA с их заголовком "Пауза при открытии окна" UI Automation
			| 'Имя'                  | 'Тип' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ПаузаПриОткрытииОкна' | ''    | ''                           | 'Ложь'                         |
	
	* Это может быть полезно, если у форм могут быть дополнительные обработчики инициализации и нужно дождаться их выполнения.


	* Продолжим. Данная настройка позволяет указать верхнюю границу для длительности выполнения элементарного действия.
		И я делаю подсветку нескольких элементов VA с их заголовком "Максимальное время выполнения действия" UI Automation
			| 'Имя'                                 | 'Тип' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'МаксимальноеВремяВыполненияДействия' | ''    | ''                           | 'Ложь'                         |
	
	* По сути настройка позволяет корректно обработать ситуации, когда клиент тестирования повисает.
	* Если задано значение отличное от нуля, то после истечения указанного времени будет вызвано исключение.
		И я делаю подсветку нескольких элементов VA с их заголовком "Максимальное время выполнения действия" UI Automation
			| 'Имя'                                 | 'Тип' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'МаксимальноеВремяВыполненияДействия' | ''    | ''                           | 'Ложь'                         |
	* Если задано значение ноль, то проверка на длительность выполнения действия проводиться не будет.
		И я делаю подсветку нескольких элементов VA с их заголовком "Максимальное время выполнения действия" UI Automation
			| 'Имя'                                 | 'Тип' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'МаксимальноеВремяВыполненияДействия' | ''    | ''                           | 'Ложь'                         |

	* На этом всё, переходи к следующему уроку интерактивной справки.




