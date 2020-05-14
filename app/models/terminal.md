rails-mister-cocktail git:(master) rails db:drop
rails aborted!
ActiveRecord::NoEnvironmentInSchemaError:

Environment data not found in the schema. To resolve this issue, run:

        rails db:environment:set RAILS_ENV=development

/home/philippe/code/pniemann9/rails-mister-cocktail/bin/rails:9:in `<top (required)>'
/home/philippe/code/pniemann9/rails-mister-cocktail/bin/spring:15:in `<top (required)>'
./bin/rails:3:in `load'
./bin/rails:3:in `<main>'
Tasks: TOP => db:drop => db:check_protected_environments
(See full trace by running task with --trace)
➜  rails-mister-cocktail git:(master) rails db:environment:set RAILS_ENV=development
➜  rails-mister-cocktail git:(master) rails db:drop
Dropped database 'rails_mister_cocktail_development'
Dropped database 'rails_mister_cocktail_test'
➜  rails-mister-cocktail git:(master) rails db:create db:migrate
Created database 'rails_mister_cocktail_development'
Created database 'rails_mister_cocktail_test'
== 20200514102013 CreateIngredients: migrating ================================
-- create_table(:ingredients)
rails aborted!
StandardError: An error has occurred, this and all later migrations canceled:

PG::UndefinedTable: ERROR:  relation "cocktails" does not exist
/home/philippe/code/pniemann9/rails-mister-cocktail/db/migrate/20200514102013_create_ingredients.rb:3:in `change'
/home/philippe/code/pniemann9/rails-mister-cocktail/bin/rails:9:in `<top (required)>'
/home/philippe/code/pniemann9/rails-mister-cocktail/bin/spring:15:in `<top (required)>'
./bin/rails:3:in `load'
./bin/rails:3:in `<main>'

Caused by:
ActiveRecord::StatementInvalid: PG::UndefinedTable: ERROR:  relation "cocktails" does not exist
/home/philippe/code/pniemann9/rails-mister-cocktail/db/migrate/20200514102013_create_ingredients.rb:3:in `change'
/home/philippe/code/pniemann9/rails-mister-cocktail/bin/rails:9:in `<top (required)>'
/home/philippe/code/pniemann9/rails-mister-cocktail/bin/spring:15:in `<top (required)>'
./bin/rails:3:in `load'
./bin/rails:3:in `<main>'

Caused by:
PG::UndefinedTable: ERROR:  relation "cocktails" does not exist
/home/philippe/code/pniemann9/rails-mister-cocktail/db/migrate/20200514102013_create_ingredients.rb:3:in `change'
/home/philippe/code/pniemann9/rails-mister-cocktail/bin/rails:9:in `<top (required)>'
/home/philippe/code/pniemann9/rails-mister-cocktail/bin/spring:15:in `<top (required)>'
./bin/rails:3:in `load'
./bin/rails:3:in `<main>'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
➜  rails-mister-cocktail git:(master) ✗ rails db:rollback
➜  rails-mister-cocktail git:(master) ✗ rails db:create db:migrate
Database 'rails_mister_cocktail_development' already exists
Database 'rails_mister_cocktail_test' already exists
== 20200514102013 CreateIngredients: migrating ================================
-- create_table(:ingredients)
   -> 0.0104s
== 20200514102013 CreateIngredients: migrated (0.0105s) =======================

== 20200514103101 CreateCocktails: migrating ==================================
-- create_table(:cocktails)
   -> 0.0097s
== 20200514103101 CreateCocktails: migrated (0.0098s) =========================

== 20200514103102 CreateDoses: migrating ======================================
-- create_table(:doses)
   -> 0.0229s
== 20200514103102 CreateDoses: migrated (0.0230s) =============================
