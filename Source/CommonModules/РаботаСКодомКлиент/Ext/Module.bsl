﻿Функция ИсполнитьКод(Код) Экспорт
	Результат = Новый Структура;
	//
	Попытка
		Результат.Вставить("ВремяНачало",ТекущаяУниверсальнаяДатаВМиллисекундах());
		//
		Вывод = Неопределено;
		Выполнить(Код);
		//
		Результат.Вставить("ВремяКонец",ТекущаяУниверсальнаяДатаВМиллисекундах());
		Результат.Вставить("Вывод",Вывод);
	Исключение
		Если ИнформацияОбОшибке().Причина <> Неопределено Тогда 
			Результат.Вставить("Ошибка",ИнформацияОбОшибке().Причина.Описание);
		Иначе
			Результат.Вставить("Ошибка","");
		КонецЕсли;
	КонецПопытки;
	//
	Возврат Результат;
КонецФункции