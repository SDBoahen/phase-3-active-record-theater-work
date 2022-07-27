class Role < ActiveRecord::Base
    #### Asscoation Macros   ->   Connection/Assication  +  Writes An Instance Method For Us
    # R -< A
    has_many :auditions


    #### Instance Methods

        
        # Role#actors 
        #   returns an array 
        #       of names 
        #         from the actors associated with this role
        def actors

            puts "
            using .map w/{}
            
            "

            self.auditions.map { | each_audition | each_audition.actor }            
            
            # self.auditions.map do | each_audition |
            #     each_audition.actor
            # end


            # result = [ ]

            # # self.audtions => [ #<A> , #<A> , #<A> ] 
            # # .actor

            # self.auditions.each do | each_audition |

            #     result << each_audition.actor       
            #     # result.push( each_audition.actor )                

            # end

            # # .map

            # return result

        end




        # Role#locations 
        # returns an array 
        #       of locations from the auditions associated with this role
        def locations

            self.auditions.map { | each_audition | each_audition.location }            

        end


        

        # Role#lead 
        # returns the * first * instance 
        #   of the audition that was hired for this role 
        #       or returns a string 'no actor has been hired for this role' - done
        def lead 

            # self ->  #<R>
            # .audtions
            # self.audtions . some_interator **** filter
            # [ #<R> ] -> [ #<R> ][ 0 ]


            if( self.auditions.count === 0 ) 
                return 'no actor has been hired for this role'
            end


                result_of_map = self.auditions.map do | each_aud | 

                    if( each_aud.hired === true )

                        each_aud

                    end
                
                end
                # puts "#{ result_of_map }"


            if ( result_of_map.count === 0 ) # [ ]

                return 'no actor has been hired for this role'

            else # .cout > 0

                return result_of_map[ 0 ]
                # result_of_map.first

            end

        
        end




        # Role#understudy 
        #   returns the second instance 
        #       of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'
        def understudy


            if( self.auditions.count === 0 )
                return 'no ONE has been hired for this role.... No One Auditioned'
            end

            # puts "self.auditions: #{ self.auditions } "
            result_of_filter = self.auditions.filter do | each_aud |

                if( each_aud.hired === true )
                    each_aud
                end
            
            end
            # puts "array: #{result_of_filter} "

            if ( result_of_filter.count === 0 )
                return 'no actor has been hired for understudy for this role'
            end
            if ( result_of_filter.count === 1 )
                return 'only a lead for this role'
            end
            
            puts "result_of_filter.count > 1: #{result_of_filter.count > 1} "
            if ( result_of_filter.count > 1 ) #  [ #<A> , #<A> ]
                # return result_of_filter
                return result_of_map[ 1 ]
            end 

            # return nil 
        end







        #X# Role#auditions returns all of the auditions associated with this role


end