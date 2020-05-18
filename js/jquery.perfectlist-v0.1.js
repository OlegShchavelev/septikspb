(function( $ ) {
  $.fn.perfectList = function(options) {
	
	var defaults = {
	//Настройки для ввода:
	processLinks: true,			// Обрабатывать ссылки, если если таковые имеются (если если fasle, текст будет выводится без ссылок)
	inputItem: "",				// Селектор элемента, в котором искать текст [и ссылку]. (по умолчанию ищет либо в <li>, либо в <td>)  (Пример - "div", или ".listItem")
	nameSelector: "",			// Селектор, в котором искать текст (по умолчанию будет взят весь текст элемента) (Пример - "span", или ".listName")
	//Настроки для вывода:
	numberOfCulumns: 5,			// Количество колонок
	listType: "ul",				// Тип списка (ul / ol) (String)
	listItem: "li",				// Элемент списка (String)
	sorting: true,				// Сортировка по алфавиту
	saveWrapperClass: false,	// Сохранять ли класс контейнера, в котором располагаются списки (под контейнером подразумевается тот элемент, к которому применяется данный плагин)
	wrapperClass: "pl-wrapper",	// Класс для элемента, в который попадают списки (все списки помещаются внутрь элемемента div). Если классов несколько, записывать так ("class1 class2")
	listTypeClass: "",			// Класс для списка
	linkClass: "",			    // Класс для ссылки
	listTypeFirstClass: "",		// Класс для первого списка
	listTypeLastClass: "",		// Класс для последнего списка
	listItemClass: "",			// Класс для элемента списка
	listItemFirstClass: "",		// Класс для первого элемента списка
	listItemLastClass: "",		// Класс для последнего элемента списка
	createTitleForLinks: true,	// Создавать title для ссылки (Если включено, обазательно проверьте настройки функции формирования title (Ctrl+f:createTitleForLinks)
	prevHtml: false,			// Сюда можно добавить какой-то HTML код, который будет перед списком. Если значение - true, тогда отработает функция(настраивается по коду ниже). Если значение строка, то эта строка и добавится в начало. Если значение false, то соотвественно ничего не добавится
	afterHtml: "<div style='clear:both'></div>"	// То же, что и предедущий пункт, но в конце.
	}
	settings = $.extend({}, defaults, options);

//--------НАСТРАИВАЕМЫЕ ФУНКЦИИ - prevHtml и afterHtml (createTitleForLinks по коду ниже.) -----------// 
	//prevHtml
	if(settings.prevHtml){ //если в настройках выше (или при вызове плагина) не false, тогда:
		if(settings.prevHtml === true){	// еще одно условие - если в настройках стоит именно true и ничто иное. (то, что внутри этого if нужно настроить, к примеру указать правильный путь до h1)
			if($("h1").length > 0){	//проверяем есть ли на странице тег h1.
				settings.prevHtml = $("h1")[0].outerHTML;	//есть тег есть, то в prevHtml будет копия этого тега (первого, если тегов несколько)
			}else{ //если h1 не найден
				settings.prevHtml = "<h1>Заголовок для списка (настраивается в плагине «jQuery.perfectList» -> prevHtml)<h1>"; //выводится заглушка (конечно, ее лучше удалить :) )
			}
		}else{// если в настройках не указано именно true, но и не false:
			settings.prevHtml = settings.prevHtml; // просто выводим то, что указанно в виде строки или элементов html.
		}
	}else{
		settings.prevHtml = ""; // если в настройках false, тогда не выводим ничего.
	}
	
	//afterHtml
	if(settings.afterHtml){ // смотрите описание prevHtml. Так как afterHtml имеет абсолютно ту же механику.
	//------Настройте функцию:----//
		if(settings.afterHtml === true){ 
				settings.afterHtml = "<div style='clear:both'></div>"; 
		}else{
			settings.afterHtml = settings.afterHtml;
		}
	//---------------------------//
	}else{
		settings.afterHtml = "";
	}
	
	settings.listTypeClass = settings.listTypeClass? " class='"+settings.listTypeClass+"'":"";
	settings.listItemClass = settings.listItemClass? " class='"+settings.listItemClass+"'":"";
	
	if(settings.saveWrapperClass == false){
		settings.wrapperClass = settings.wrapperClass? " class='"+settings.wrapperClass+"'" : "";
	}else{
		if(typeof this.attr("class") === "undefined"){
			settings.wrapperClass = "";
		}else{
			settings.wrapperClass = " class='"+this.attr("class")+"'";
		}
	}
	settings.wrapperElement = "<div"+settings.wrapperClass+"></div>";
	
	
	var container = [];
	if(!settings.inputItem){
		if(this.find("li").length > 0){
			var inputElement = this.find("li");
		}else{
			var inputElement = this.find("td");
		}
	}else{
		var inputElement = this.find(settings.inputItem);
	}
	inputElement.each(function(){
		var arr = {};
		if(settings.processLinks == true && $(this).find("a").length > 0){
			arr.href = $.trim($(this).find("a").attr("href"));
		}
		if(settings.nameSelector == false){
			arr.name = $.trim($(this).text());
		}else{
			arr.name = $.trim($(this).find(settings.nameSelector).text());
		}
		// createTitleForLinks
		if(settings.createTitleForLinks){
		//------Настройте функцию:----//
			if($("h1").length > 0){
				arr.title = " title='"+$("h1").text()+" "+arr.name+"'";
			}else{
				arr.title = " title='"+arr.name+"'";
			}
		//---------------------------//
		}else{
				arr.title = "";
		}
		// createClassForLinks
		if(settings.linkClass){
		//------Настройте функцию:----//
			arr.linkclass = " class='"+settings.linkClass+"'";
		//---------------------------//
		}else{
			arr.linkclass = "";
		}
		container.push(arr);
		console.log(arr);
	});
	//Сортировка по алфавиту
	if(settings.sorting == true){
		container.sort(function(a, b){
			var modelA=a.name.toLowerCase(), modelB=b.name.toLowerCase();
			if (modelA < modelB)
				return -1;
			if (modelA > modelB)
				return 1;
			return 0;
		});
	}

	var output = "";
	var co = container.length/settings.numberOfCulumns;//кол-во элементов поделенное на кол-во колонок
	var coMax = Math.ceil(co); // округленное в большую сторону
	var coMin = Math.floor(container.length/settings.numberOfCulumns);// округленное в меньшую сторону
	var tail = container.length-coMin*settings.numberOfCulumns; // определяем кол-во элементов в хвосте
	
	for(var i = 0, k = 0, m = 0; i < container.length; i++){//var k - счетчик для закрытия ul, var m - счечик для длины хвоста
		if(k == 0){output += "<"+settings.listType+""+settings.listTypeClass+">";}
		if(settings.processLinks == true && container[i].href.length > 0){
			output += "\n<"+settings.listItem+""+settings.listItemClass+"><a href='"+container[i].href+"'"+container[i].title+container[i].linkclass+">"+container[i].name+"</a></"+settings.listItem+">";
		}else{
			output += "\n<"+settings.listItem+""+settings.listItemClass+">"+container[i].name+"</"+settings.listItem+">";
		}
		k++;
		if(m < tail){ //если не достигли конца хвоста,
			if(k == coMax){ // тогда длина списка равна округленному в большую сторону результату деления длинны исходного списка на кол-во колонок.
				output += "\n</"+settings.listType+">\n";k = 0; 
				m++; // закрывая список увеличиваем счетчик длины хвоста
			}
		}else{
			if(k == coMin){
				output += "\n</"+settings.listType+">\n";k = 0;
				m++;
			}
		}
	}
	var n = $(this).html(output).append(settings.afterHtml).wrapInner(settings.wrapperElement).children().unwrap();
	if(settings.prevHtml){n.prepend(settings.prevHtml);}
	if(settings.listTypeFirstClass){
		n.find(settings.listType).first().addClass(settings.listTypeFirstClass);
	}
	if(settings.listTypeLastClass){
		n.find(settings.listType).last().addClass(settings.listTypeLastClass);
	}
	if(settings.listItemFirstClass){
		n.find(settings.listType).each(function(){
			$(this).find(settings.listItem).first().addClass(settings.listItemFirstClass);
		});
	}
	if(settings.listItemLastClass){
		n.find(settings.listType).each(function(){
			$(this).find(settings.listItem).last().addClass(settings.listItemLastClass);
		});
	}
	return n;
  };
})(jQuery);