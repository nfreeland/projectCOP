-- Create all the tables, test, then run cleanup
@CreateTables;
@PopulateTables;
@TestTables;
@Cleanup;