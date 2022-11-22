require 'database_connection'

# Make sure this connects to your test database
# (its name should end with '_test')
DatabaseConnection.connect('your_database_name_test')

# rest of original spec_helper should follow