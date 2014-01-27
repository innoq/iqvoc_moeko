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

1. Datenbank-Migrationen ausführen:<br/>
   `jruby -S bin/rake db:migrate RAILS_ENV=production`
2. Seed-Daten erzeugen:<br/>
   `jruby -S bin/rake iqvoc:db:seed_all RAILS_ENV=production`
3. Assets vorkompilieren:<br/>
   `jruby -S bin/rake assets:precompile RAILS_ENV=production RAILS_RELATIVE_URL_ROOT=/meerthes`
4. .war-File erzeugen:<br/>
   `jruby -S bin/warble RAILS_ENV=production`
5. .war-File im Tomcat deployen

### Import

#### Matches zum UMTHES

Auf Basis von ´./data/matches.csv´ können Matches zu Konzepten im UMTHES erstellt
werden.

Dazu muss folgender Import-Task ausgeführt werden:

    $ jruby -S bin/rake data:import:matches RAILS_ENV=production
