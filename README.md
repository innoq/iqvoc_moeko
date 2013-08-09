## Deployment in Tomcat 7

### Voraussetzungen

1. [JRuby](http://jruby.org) installieren
2. `jgem install bundler`
3. `jruby -S bundle --binstubs --without development test` im Root-Verzeichnis der Anwendung
4. Oracle-DB und -User anlegen
5. `config/database.yml` anlegen und konfigurieren, ein Beispiel findet sich in
   `config/database.template.yml`.
6. Konnektivität testen mit `jruby -S ./bin/rails console production`

### Deployment eines neuen Releases

1. Datenbank-Migrationen ausführen:
   `jruby -S bin/rake db:migrate RAILS_ENV=production`
2. Seed-Daten erzeugen:
   `jruby -S bin/rake iqvoc:db:seed_all RAILS_ENV=production`
3. Assets vorkompilieren:
   `jruby -S bin/rake assets:precompile RAILS_ENV=production`
4. .war-File erzeugen:
   `jruby -S bin/warble RAILS_ENV=production`
5. .war-File im Tomcat deployen
