class MainController < ApplicationController
    def greeter
        @name = params[:user_name]
    end
    def cubed
        @outcome = params[:num].to_i 
        @result = @outcome **3
    end
    def evenly 
        # @outcome = params[:num].to_i
        # @result = @outcome 
        if (params[:num1].to_i / params[:num2].to_i).even?
            @outcome = "is even"
        else
             @outcome = "not even"
        end
        @num1 = params[:num1]
        @num2 = params[:num2]
    end
    def palindrome 
        if params[:str] == params[:str].reverse
            @outcome = 'is a palindrome'
        else 
            @outcome = 'isnt a palindrome'
        end
        @str = params[:str]
        @str2 = params[:str].reverse
    end
    def random 
        @num1 = params[:num1].to_i
        @num2 = params[:num2].to_i
        @outcome = rand(@num1..@num2)
    end
    def madlib 
        @noun = params[:str1]
        @pronoun = params[:str2]
        @verb = params[:str3]
        @adjective = params[:str4]
        @adverb = params[:str5]
    end
end
