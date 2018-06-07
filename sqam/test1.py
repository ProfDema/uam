from pg import DB

def connection(dbname, host, user, pwd, port=5432):
    """ Returns a postgres DB connection """
    try:
        return DB(dbname=dbname, host=host, port=port, user=user, passwd=pwd)
    except Exception:
        pass


def run_query(db, query):
    """
    @param db: valid postgres database connection
    @param query: sql query
    @retval: query result
    """
    return db.query(query)


if __name__ == "__main__":
    myconn = connection("uam", "localhost", "ilirdema", "westmall")
    print(myconn)
    q = "create schema if not exists s1; set search_path to s1"
    print(run_query(myconn, q))
    q = "create table if not exists t1(id int primary key, description varchar)"
    run_query(myconn, q)
    print(myconn.get_tables())
    q = "truncate t1"
    run_query(myconn, q)
    q = "insert into t1 values(1, 'test')"
    run_query(myconn, q)
    q = "select * from t1"
    print(run_query(myconn, q))
