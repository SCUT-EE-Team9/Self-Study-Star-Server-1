import time


def unix_time(dt):
    # 转换成时间数组
    timeArray = time.strptime(dt, "%Y-%m-%dT%H:%M")
    # 转换成时间戳
    unixtime = time.mktime(timeArray)
    return unixtime


def normol_time(unixtime):
    # 转换成normoltime
    time_local = time.localtime(unixtime)
    # 转换成新的时间格式(2016-05-05T20:28)
    dt = time.strftime("%Y-%m-%dT%H:%M", time_local)
    return dt


if __name__ == '__main__':
    str = input("enter a time\n")
    unix_t = unix_time(str)
    normol_t = normol_time(unix_t)
    print(unix_t)
    print(normol_t)
