from datetime import datetime, timedelta
import DB_connection
import exception_logging
class measurement_tuple(object):
    def __init__(self,name: str, measurement_interval: timedelta):
        self.name = name
        self.measurement_interval = measurement_interval
class webapp_tuple(object):
    def __init__(self, name: str, webapp_interval: timedelta):
        self.name = name
        self.webapp_interval = webapp_interval
class start_time_tuple(object):
    def __init__(self, name: str, start_time: datetime):
        self.name = name
        self.start_time = start_time
def get_measurement_interval():
    try:
        station_list = DB_connection.read_station_interval_Database()
        measurement_tuple_list = []
        for station in station_list:
            m_tuple = measurement_tuple(station[0], timedelta(seconds=station[1] * 60))
            measurement_tuple_list.append(m_tuple)

        return measurement_tuple_list
    except Exception as e:
        exception_logging.logException(e, "get station measurement interval")

def get_webapp_interval():
    try:
        station_list = DB_connection.read_station_interval_Database()
        webapp_tuple_list = []
        for station in station_list:
            w_tuple = webapp_tuple(name=station[0], webapp_interval=timedelta(seconds=station[2] * 60))
            webapp_tuple_list.append(w_tuple)
        return webapp_tuple_list
    except Exception as e:
        exception_logging.logException(e, "get station webapp interval")

def get_start_time(name):
    try:
        station_list = DB_connection.read_station_interval_Database()
        for station in station_list:
            if name == station[0]:
                return start_time_tuple(name=station[0], start_time=datetime.now())
    except Exception as e:
        exception_logging.logException(e, "get station start time")
def station_interval_passed(start_list, delta_list):
    station_list = []
    try:
        for start_tuple in start_list:
            for delta_tuple in delta_list:

                    start_time = getattr(start_tuple, "start_time")
                    delta_time = getattr(delta_tuple, "measurement_interval")
                    if (start_time + delta_time) < datetime.now():
                        station_list.append(getattr(start_tuple, "name"))
        return station_list
    except Exception as e:
        exception_logging.logException(e, "evaluate station interval")

def get_all_start_times():
    try:
        station_list = DB_connection.read_station_interval_Database()
        start_list = []
        for s in station_list:
            start_list.append(get_start_time(s[0]))
        return start_list
    except Exception as e:
        exception_logging.logException(e, "get all initial start times")
        return []