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
		Результат.Вставить("Вывод",ИнформацияОбОшибке().Причина.Описание);
	КонецПопытки;
	//
	Возврат Результат;
КонецФункции