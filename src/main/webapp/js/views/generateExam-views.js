	Quizki.AllTopicsListView = Backbone.View.extend({
		tagName:'ul',
		
		initialize:function() {
			this.render();

			this.listenTo(model_factory.get('currentListOfTopics'), 'add', function(event) { this.render(); });
			this.listenTo(model_factory.get('currentListOfTopics'), 'remove', function(event) { this.render(); });
			this.listenTo(model_factory.get('currentListOfTopics'), 'reset', function(event) { this.render(); });
		},
		renderElement: function(model) {
			var ul = this.$el.find("#listOfTopics");
			
			var topicItem = new Quizki.AllTopicsListItemView(model, 'topicItem');
			ul.append( topicItem.render().$el.html() );
		},
		render:function() {
			//  TO UNDERSTAND: why does this return a function to be executed, rather than a string?
			this.$el.html( _.template( "<ul class='span3' id='listOfTopics'></ul>" )() );
			
			var topics = model_factory.get("currentListOfTopics");
			
			_.each(topics.models, function(model) { this.renderElement(model); }, this);
			
			return this;
		},
		events: {
			"dblclick .topicItem":"addItemToSelectedList"
		},
		addItemToSelectedList: function(event) {
			var currentListOfTopics = model_factory.get("currentListOfTopics");
			
			var topicText = $(event.target).html().trim();
			
			var topicObject = currentListOfTopics.where({ text:topicText })[0].attributes;
			
			currentListOfTopics.remove(topicObject);
			
			// add an object to the selected item list
			var selectedListOfTopics = model_factory.get("selectedListOfTopics");
			selectedListOfTopics.add(topicObject);
		}
	});

	Quizki.AllTopicsListItemView = Backbone.View.extend({
		tagName:'li',
		
		initialize:function() {
			this.model = arguments[0].attributes;
			this.fieldClass = arguments[1];
		},
		render: function(model) {
			var _model = this.model;
			var _fieldClass = this.fieldClass;
			
			this.$el.html( view_utility.executeTemplate('/templates/ItemInAllTopicsList.html', {text:_model.text,klass:_fieldClass}));
			
			return this;
		}
	});
	
	Quizki.AllTopicsListFilterView = Backbone.View.extend({
		initialize:function() {
			this.render();
		},
		render: function(model) {
			// TODO: will need to remember state.. probably.
			this.$el.html(view_utility.executeTemplate('/templates/AllTopicsListFilterView.html', { }));
			return this;
		},
		events: {
			"blur #topicContainsFilter" : "applyTextFilter"
		},
		applyTextFilter: function(event) {
			FilteredTopicListGetter.get(false, $(event.target).val(), model_factory.get("currentListOfTopics"));
		}
	});
	
	Quizki.SelectedTopicsListView = Backbone.View.extend({
		tagName:'ul',
		
		initialize:function() {
			this.render();
			
			this.listenTo(model_factory.get('selectedListOfTopics'), 'add', function(event) { this.render(); });
			this.listenTo(model_factory.get('selectedListOfTopics'), 'remove', function(event) { this.render(); });
		},
		renderElement: function(model) {
			var ul = this.$el.find("#selectedListOfTopics");
			
			var topicItem = new Quizki.AllTopicsListItemView(model, 'selectedTopicItem');
			ul.append( topicItem.render().$el.html() );
		},
		render:function() {
			//  TO UNDERSTAND: why does this return a function to be executed, rather than a string?
			this.$el.html( _.template( "<ul class='span3' id='selectedListOfTopics'></ul>" )() );
			
			var topics = model_factory.get("selectedListOfTopics");
			
			_.each(topics.models, function(model) { this.renderElement(model); }, this);
			
			return this;
		},
		events: {
			"dblclick .selectedTopicItem":"removeItemFromSelectedList"
		},
		removeItemFromSelectedList: function(event) {
			var selectedListOfTopics = model_factory.get("selectedListOfTopics");
			
			var topicText = $(event.target).html().trim();
			
			// remove that item from currentListOfTopics
			var topicObject = selectedListOfTopics.where({ text:topicText })[0].attributes;
			
			selectedListOfTopics.remove(topicObject);
			
			// add an object to the selected item list
			var currentListOfTopics = model_factory.get("currentListOfTopics");
			currentListOfTopics.add(topicObject);
		}
		
	});
	
	Quizki.ArrowView = Backbone.View.extend({
		
	});

	Quizki.MatchingExamsView = Backbone.View.extend({
		tagName:'ul',
		
		initialize:function() {
			this.render();
		},
		renderElement: function(model) {
			var ul = this.$el.find("#matchingExamsView");
			
			var examItem = new Quizki.MatchingExamItemView(model);
			ul.append( examItem.render().$el.html() );
		},
		render:function() {
			this.$el.html( _.template( "<ul class='span3' id='matchingExamsView'></ul>" )() );
			
			var exams = model_factory.get("listOfMatchingExams");
			
			_.each(exams.models, function(model) { this.renderElement(model); }, this);
			
			return this;
		}
	});
	
	Quizki.MatchingExamItemView = Backbone.View.extend({
		tagName:'li',
		
		initialize:function() {
			this.model = arguments[0].attributes;
		},
		render: function(model) {
			var _model = this.model;
			this.$el.html( view_utility.executeTemplate('/templates/ItemInMatchingExamList.html', {text:_model.val.text}));
			
			return this;
		}
	});
	
	Quizki.MatchingExamsFilterView = Backbone.View.extend({
		initialize:function() {
			this.render();
		},
		render: function(model) {
			// TODO: will need to remember state.. probably.
			this.$el.html(view_utility.executeTemplate('/templates/MatchingExamsListFilterView.html', { }));
			return this;
		},
		events: {
			// TODO: handle checkbox click
		},
		handleCheckboxClick: function(model) {
			
		}
	});
	
	Quizki.OptionsForGenerateExamView = Backbone.View.extend({
		
	});
	
	Quizki.TakeGeneratedOrSelectedExamButtonView = Backbone.View.extend({
		
	});
	
	Quizki.HeaderTextForGenerateExam = Backbone.View.extend({
		initialize:function() {
			this.render();
		},
		render:function() {
			this.$el.html(view_utility.executeTemplate('/templates/HeaderTextForGenerateExam.html', { }));			
			return this;
		}
	});
	