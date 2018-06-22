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
"Днем ранее Сирийские войска вероломно атаковали Британский миротворческий контингент в Аль Аяхе.
<br />До сих пор не ясно, что стало причиной внезапного нападения.
<br />
<br />Из-за подавляющего численного превосходства противника, командование приказало немедленно эвакуироваться.
<br />
<br />Выжившие после первой атаки сирийцев британские силы пытаются перегруппироваться в районе заброшенного блок поста."
END

TOPIC("А. Враждебные силы:")
"Вооруженные Силы Сирии
<br /> Количество неизвестно"
END

TOPIC("Б. Дружественные силы:")
"Вооружённые силы Великобритании
<br /> 2 Отряда ( Выжившие )
<br /> 1'1 - 8 чел.
<br /> 2'3 - 8 чел.
<br /> 1'6 - 2 чел."
END

TOPIC("II. Задание:")
"1. Перегруппироваться в районе заброшенного блок поста"
END

TOPIC("III. Выполнение:")
"По плану командира."
END

TOPIC("IV. Поддержка:")
"Отсутствует"
END

TOPIC("V. Сигналы:")
"PL NET 50
<br />1'1 - SR CH 1
<br />2'3 - SR CH 3
<br />1'6 - SR CH 2"
END

TOPIC("VI. Замечания:")
"Powered by Tactical Shift Framework"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"-"
END
};

ADD_TOPICS