Bienvenue sur FreeDoc.fr !

Pour tester l'app, merci de lancer "rails db:seed" dans le dossier principal.

N'hésitez pas à lancer les commandes suivantes dans votre terminal pour clean les BDD et repartir de 0! :)

Doctor.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'doctors'")

Patient.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'patients'")

Appointment.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'appointments'")

City.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'cities'")

Specialty.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'specialties'")

