#!/usr/bin/env python

from datetime import datetime, timedelta

date = datetime(1901, 1, 6)
sundays = 0
while date < datetime(2000, 12, 31):
	sundays += date.timetuple().tm_mday == 1
	date += timedelta(days=7)

print(sundays)
