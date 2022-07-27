puts "seeding ..."


# i <---- d : destroy
    # Role -< Audition []
Audition.destroy_all
Role.destroy_all




# i ----> d : create  x .new -> .save
#   Role -> Audition

#### Roles 
# Role( character_name: string )

# Has Audtions
simba = Role.create( character_name: "Simbaaaa" )
rafiki = Role.create( character_name: "Rafiki" )

# No Auds
mufasa = Role.create( character_name: "Mufasa" )


Role.create( character_name: "Bell" )




#### Auditions
# Audition( actor: string, location: string, phone: integer, hired: boolean, role_id: integer )

Audition.create(

    actor: "Sam" ,
    location: "The Boggie Down - Bx" ,
    phone: 123456789 , 
    hired: false ,

    role_id: simba.id # x 1
    # role: simba

)


Audition.create(

    actor: "Caroline" ,
    location: "Earth" ,
    phone: 123456789 , 
    hired: true ,

    role_id: rafiki.id

)

Audition.create(

    actor: "Sam P" ,
    location: "Earth" ,
    phone: 123456789 , 
    hired: false ,

    role_id: rafiki.id #   #<R>.id -> number -> 2

)



# Audition.create(

#     actor: "Sam P" ,
#     location: "Earth" ,
#     phone: 123456789 , 
#     hired: false ,

#     role_id: bell.id

# )







puts "done seeding!"




# initialize
# .new
# Audition.new
# Audition.create

# audition