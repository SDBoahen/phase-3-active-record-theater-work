class Audition < ActiveRecord::Base
    #### Association Macros
    # A >- R
    belongs_to :role


    #### Instance Methods


        #  Audition#call_back will change the the hired attribute to true

        def call_back 

            puts "
                self in this scope: #{self} , #{self.actor}
            
            "

            #### Pure Ruby
                # self.hired = true       
                #     self.save

            #### AR Query
                #### AR Queries : CR[ U ]D - Update
                self.update( hired: true )

        end




        #  Audition#instance method - name: role_for_me
        #    returns an instance 
        #       of role ( Role ) associated with this audition
        # def role 

        #     # Role.all.map{  }
        #     puts "LOLOLOLOL jk....you dont gotta do this Fam"
        #     self.role

        # end

        
  

end