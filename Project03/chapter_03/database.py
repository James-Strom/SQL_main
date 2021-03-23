import sqlite3

connection = sqlite3.connect("data.db")
# connection.row_factory = sqlite3.Row
# Can be used to return a string in a row instead of python tuple
# Easier to read, but takes longer, can become confusing



def create_table():
    with connection:
        connection.execute("CREATE TABLE IF NOT EXISTS entries (content TEXT, DATE TEXT);")


def add_entry(entry_content, entry_date):
    with connection:
        connection.execute(
            "INSERT INTO entries VALUES(?,?);",(entry_content, entry_date)
        )


def get_entries():
    cursor = connection.execute("SELECT * FROM entries;")
    # Returns individual rows, first row
    # cursor.fethone()
    # fethces all the entries
    # return cursor.fetchall()
    return cursor
    