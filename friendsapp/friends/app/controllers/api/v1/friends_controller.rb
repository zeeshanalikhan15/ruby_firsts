module Api
    module V1
        class FriendsController < ApplicationController
            def index
            friends = Friend.order('created_at DESC');
            render json: {status: 'SUCCESS', message: 'Loaded Friends', data: friends}, status: :ok
            end
            def create
                friend = Friend.new(friend_params)

                if friend.save
                    render json: {status: 'SUCCESS', message: 'Friend saved scussessfully', data: friend}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Friend not saved', data: friend.errors}, status: :unprocessable_entity
                end
            end

            private

            def friend_params
                params.permit(:name, :Location)
            end
        end
    end
end
