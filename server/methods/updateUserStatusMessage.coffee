Meteor.methods
	updateUserStatusMessage: (message) ->
		if not @userId?
			return

		@unblock()

		RocketChat.models.Users.setUserMessage @userId, message
