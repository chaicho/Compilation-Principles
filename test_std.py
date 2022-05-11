#!/usr/bin/python
# -*- coding: UTF-8 -*-

import os
cur_path ="./Test/l2std/normal/Tests(normal)"
for root, dirs, files in os.walk(cur_path, topdown=False):
  print(root)
  for file in files:
    if(os.path.splitext(file)[1] =='.cmm'):
      cmm_path =  os.path.join(root,file)
      out_path = os.path.join(root,os.path.splitext(file)[0])
      os.system("./Code/parser " + os.path.join(root,file) +" > tmp.out")

