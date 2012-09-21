"use strict"
var Chat = Backbone.Model.extend({
	urlRoot: 'chats/',
	newChat : function(){
		this.save()
	}
	})
//var ChatCol = Backbone.Collection.extend({})
var ChatView = Backbone.View.extend({
	tagName: 'li',
	className : 'chat-item',
	events : {
		'hover .strong' : 'itemHovered',
		'click .save-button': 'save'
	},
	initialize: function(){
		this.model.on('change', this.render, this)
		this.model.on('destroy', this.cleanup, this)
	},
	render: function(){
		var html = '<strong class="strong">'+this.model.get('content')+'</strong><span class="btn btn-mini save-button" >save</span>';
		$('#chat-list').append(this.$el.html(html));
	},
	itemHovered: function(e){
		alert(this.model.get('content'))
	},
	cleanup: function(){
		this.$el.remove()
	},
	save: function(e){
		this.model.newChat()
	}
	
}) 