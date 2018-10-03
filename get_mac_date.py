#! /usr/bin/env python3
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#

import pandas as pd
import sys
url = r'http://search.deepmac.org/search.php?date=&macadd='+sys.argv[1:][0]+'&comp=&dev=&numresults=1'
tables = pd.read_html(url)
out = tables[0]
date = pd.DataFrame(out).at[0,'Date⇑']
company = pd.DataFrame(out).at[0,'Company']
print (date)
print (company)
