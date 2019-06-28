class MessagesController < ApplicationController
    before_action :require_user

    def create
        message = current_user.messages.build(message_params)
        #build(alias of new) won't "create" a record in database, just create a new object in memory so that the view can take this object and display something, especially for a form.
        if message.save
            ActionCable.server.broadcast "chatroom_channel",
                        mod_message: message_render(message)
        end
    end

    private

    def message_params
        params.require(:message).permit(:body)
    end

    def message_render(message)
        render(partial: 'message', locals: {message: message})
    end
end
