// tSF Briefing
// Do not modify this part
#define BRIEFING _briefing = [];
#define TOPIC(NAME) _briefing pushBack ["Diary", [ NAME,
#define END ]];
#define ADD_TOPICS for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"Утилизация британских военных постов в Сирии завершена на половину. Наш миротворческий контингент покидает страну.
<br />
<br />Сирийские силы перекрывают дороги чтобы удерживать контроль над покидаемой нами территорией.
<br />
<br />Большая часть дорог перекрыта, и движение осуществляется исключительно по пропускам. Воздушное сообщение также сильно ограничено.
<br />
<br />Сегодня нашему взводу поручено оказать помощь в утилизации Kamino Firing Range."
END

TOPIC("А. Враждебные силы:")
"Не ожидается"
END

TOPIC("Б. Дружественные силы:")
"Вооружённые силы Великобритании
<br />1 Взвод ( Ослабленный )
<br /> 1'1 - 8 чел.
<br /> 1'2 - 8 чел.
<br /> 1'6 - 2 чел."
END

TOPIC("II. Задание:")
"1. Проследовать логистическим конвоем от Camp Rogain до Kamino Firing Range
<br />
<br />"
END

TOPIC("III. Выполнение:")
"Двигайтесь по маршруту"
END

TOPIC("IV. Поддержка:")
"Отсутствует"
END

TOPIC("V. Сигналы:")
"PL NET 50
<br />1'1 - SR CH 1
<br />1'2 - SR CH 2
<br />1'6 - SR CH 2"
END

TOPIC("VI. Замечания:")
"Powered by Tactical Shift Framework"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"- Шлакбаум окроется сам, нужно просто подождать"
END
};

ADD_TOPICSDD_TOPICS
