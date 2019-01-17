

class Phone
attr_accessor :models, :bands, :name, :phone_ids

def initialize (key)
    #auto pick the phone name base on the key value the user chosed
    @phone_ids= {1=> "iPhone Xs",2=> "iPhone Xs Max",3 => "iPhone Xr"}
    @name = @phone_ids[key]
end



def speak
    puts " I am a phone!"
end



end
