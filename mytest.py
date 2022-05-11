#!/usr/bin/python
# -*- coding: UTF-8 -*-

import os
cur_path ="./Test/Tests (advanced)/expects"
# cur_path ="./Test/l2std/advance/Tests"
for root, dirs, files in os.walk(cur_path, topdown=False):
  i = 0 
  # print(i)
  for file in files:
    if(os.path.splitext(file)[1] =='.cmm'):
      cmm_path =  os.path.join(root,file)
      out_path = os.path.join(root,os.path.splitext(file)[0])
      # out_path += '.ans'
      out_path +='.output'
      os.system("./Code/parser " + os.path.join(root,file) +" > tmp.out")
      my_out = open("tmp.out")
      my_out = map( lambda i : i.split(":")[0], my_out)
      target_out = open(out_path)
      target_out = map(lambda i : i.split(":")[0],target_out)
      if(len(my_out)!=len(target_out)):
          print(out_path)
      
      for (i,j) in zip(my_out,target_out) :
        if(i!=j):
          print(out_path)
          print("My output : {} ".format(i))
          print("Supposed output : {} ".format(j))
          break
  