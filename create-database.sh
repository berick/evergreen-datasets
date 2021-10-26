
PGUSER=evergreen
PGPASS=evergreen
PGHOST=localhost
STOCK_DB=evergreen;
DB_STAMP=1305;
DATA_SOURCE_STAMP=1305;
DATA_DB="eg_$DB_STAMP";
SCHEMA_EXPORT="/tmp/eg-$DB_STAMP.schema.archive"
DATASET_FILE="datasets/eg-$DATA_SOURCE_STAMP.data.archive"

echo "Extracting schema from stock EG database '$STOCK_DB'"
pg_dump -U $PGUSER --schema-only --format custom --file $SCHEMA_EXPORT $STOCK_DB

# Extract the data from our data-full database
# pg_dump -U $PGUSER --data-only --format custom --file $DATASET_FILE $STOCK_DB

# Create a new database from the stock code with no schema or data.
cd ../Evergreen

echo "Creating new Evergreen database '$DATA_DB'"
sudo perl Open-ILS/src/support-scripts/eg_db_config --create-database \
	--user $PGUSER --password $PGPASS --hostname $PGHOST --database $DATA_DB

cd ../evergreen-datasets

# Apply the stock schema to the new database (without data)
echo "Applying stock schema to our new datbase '$DATA_DB'"
pg_restore -U $PGUSER --dbname $DATA_DB $SCHEMA_EXPORT

# Load the full sample data into our new schema-only database
echo "Applying sample data to our new database '$DATA_DB'"
pg_restore -U $PGUSER --dbname $DATA_DB --disable-triggers $DATASET_FILE

