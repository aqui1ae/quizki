var collection_utility = (function() {
		return {
			addUniqueModelToCollection : function(model, modelKeysFunction, quizkiCollection) {
					var obj = undefined;
				
					if (modelKeysFunction !== undefined) {
						var nameOfComparisonKey = modelKeysFunction();
						
						if (nameOfComparisonKey.length > 0) {
							
							// get all the items in the collection that have an attribute named after the comparison key,
							//  then, for each of those, return those who have the same value for that attribute as our model does.
							//  .. the point being if we find a match, we don't add this new model to our collection. No dupes.
							var v = _.filter(
										_.filter(quizkiCollection.models, 
												function(item) { 
													return 	item !== undefined &&
															item.attributes.val !== undefined && item.attributes.val[nameOfComparisonKey] !== undefined; 
												}
										)
										, function(item) { 
											return 	item !== undefined &&
													item.attributes.val[nameOfComparisonKey] == model[nameOfComparisonKey];
										}
									);
							
							if (v.length == 0) {
								obj = method_utility.getQuizkiObject(model);
								quizkiCollection.add( [ obj ] );
							}
						}
					}
					else {
						obj = method_utility.getQuizkiObject(model);
						quizkiCollection.add([ obj ]);
					}
					
					return obj.millisecond_id || -1;
				}
		};
	}());

Quizki.Collection = Backbone.Collection.extend({
		initialize: function() {
			_.extend(this, Backbone.Events);
			
			if (arguments[0] !== undefined)	{
				this.modelKeysFunction = arguments[0].modelKeyFunction;
			}
		},
		put: function(model, throwEvent) {
			var rtn = collection_utility.addUniqueModelToCollection(model, this.modelKeysFunction, this);
			
			// Created this method put, because I couldn't find a way to override add(), so that I could
			//  trigger the 'somethingChanged' event when something was added.
			
			if (throwEvent !== false)
				this.trigger('somethingChanged');
			
			return rtn; // returns the millisecond_id     
		},
		addArray: function(arr, isThrowEvent) {
			if (arr === undefined) return;
			
			for (var i=0; i<arr.length; i++) 
				collection_utility.addUniqueModelToCollection(arr[i], this.modelKeysFunction, this);
			
			if (isThrowEvent !== false)
				this.trigger('somethingChanged');	
		},
		addJson: function(json, isThrowEvent) {
			
		},
		getByMillisecondId: function(millis) {
			return _.filter(this.models, function (item) {return item.attributes.millisecond_id == millis;	})[0];
		},
		update :function (millis, attr, value, throwEvent){
			var v = this.getByMillisecondId(millis); 
			
			v.attributes.val[attr] = value;
			
			if (throwEvent !== false)
				this.trigger('somethingChanged'); 
		},
		remove: function(millis, throwEvent) {
			// new list where only those that do not match millis remain, all except the one we've been asked to remove
			this.models = _.reject(this.models, function(item) { return item.attributes.millisecond_id == millis; });
			
			if (throwEvent !== false)
				this.trigger('somethingChanged'); 
		},
		reset: function(throwEvent) {
			this.models = [];
			
			if (throwEvent !== false)
				this.trigger('somethingChanged'); 
		}
	});
