Insert Readme Information Here

Testing
-----------------

Spud uses RSpec for testing. Get the tests running with a few short commands:

1. Create and migrate the databases:
   
        rake db:create
        rake db:migrate

2. Load the schema in to the test database:

        rake app:db:test:prepare

3. Run the tests with RSpec

        rspec spec

After the tests have completed the current code coverage stats is available by opening ```/coverage/index.html``` in a browser.