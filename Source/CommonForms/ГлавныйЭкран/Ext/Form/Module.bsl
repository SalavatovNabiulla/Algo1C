﻿
&НаКлиенте
Процедура ПроверитьРешение(Команда)
	РезультатИсполнения = РаботаСКодомСервер.ИсполнитьКод(Код);
	Вывод = РезультатИсполнения.Вывод;
	ВремяИсполненияСтрока = Строка((РезультатИсполнения.ВремяКонец - РезультатИсполнения.ВремяНачало)/1000) + " сек.";
	ПредупреждениеАсинх(ВремяИсполненияСтрока,0,"Время исполнения");
КонецПроцедуры
