import time
from flask import Flask
from flask_restful import Resource, Api, reqparse
from config import *
import pymysql


def unix_time(dt):
    if(dt=="") :return -1
    # 转换成时间数组
    timeArray = time.strptime(dt, "%Y-%m-%dT%H:%M")
    # 转换成时间戳
    unixtime = time.mktime(timeArray)
    return int(unixtime)


def normal_time(unixtime):
    # 转换成normaltime
    time_local = time.localtime(unixtime)
    # 转换成新的时间格式(2016年05月05日20:28)
    dt = time.strftime("%Y年%m月%d日%H:%M", time_local)
    return dt
