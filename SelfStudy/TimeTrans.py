"""
Author: Diaplo, ldqLDQ, H-1993
功能： 与时间转换相关的操作
"""
import time


def unix_time(dt):
    """
    Author: Diaplo
    功能：将时间字符串转换为Unix时间戳
    """
    
    if dt == "":
        return -1
    # 转换成时间数组
    timeArray = time.strptime(dt, "%Y-%m-%dT%H:%M")
    # 转换成时间戳
    unixtime = time.mktime(timeArray)
    return int(unixtime)


def normal_time(unixtime):
    """
    Author: Diaplo
    功能：将Unix时间戳转换为时间字符串
    """

    time_local = time.localtime(unixtime)
    # 转换成新的时间格式(2016年05月05日20:28)
    dt = time.strftime("%Y.%m.%d %H:%M", time_local)
    return dt


def finished_status(stime,etime):
    """
    Author: ldqLDQ
    功能：获取当前自习状态
    """

    nowtime = int(time.time())
    if nowtime < stime:
        return "未开始"
    elif nowtime > etime:
        return "已完成"
    else:
        return "进行中"
    
    
def print_demo_trans():
    """
    Author: H-1993
    功能：输出测试转换数据
    """
    s = "2020-11-15T14:30"
    unix_s = unix_time(s)
    print(unix_s)
    # 1605421800
    normal_s = normal_time(unix_s)
    print(normal_s)
    # 2020.11.15 14:30
