"use strict"
window.Chat = Backbone.Model.extend({
	defaults:{
		content: '',
		sender_id: '',
		reciever_id: ''
	},
	urlRoot: 'chats/'

})