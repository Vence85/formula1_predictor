import duckdb
import pandas as pd

def build_predictor_table(db_path="formula1_predictor.duckdb"):
    con = duckdb.connect(db_path)

    query = """
    SELECT
        r.raceid,
        r.driverid,
        r.contructorid,
        rs.year,
        c.name AS circuit_name,
        q.position AS qualifying_position,
        r.grid,
        ds.position AS driver_standing,
        cs.position AS constructor_standing,
        r.positionOrder AS final_position
        FROM results r
        JOIN f1races rs ON r.raceId = rs.raceid
        JOIN circuits c ON rs.circuitId = c.circuitId
        LEFT JOIN f1qualifying q ON r.raceId = q.raceId AND r.driverId = q.driverId
        LEFT JOIN f1driver_standings ds ON r.raceId = ds.raceId AND r.driverId = ds.driverId
        LEFT JOIN f1constructor_standings cs ON r.raceId = cs.raceId AND r.constructorId = cs.constructorId
        WHERE r.positionOrder IS NOT NULL
    """

    df = con.execute(query).fetch_df()
    con.close()
    return df
