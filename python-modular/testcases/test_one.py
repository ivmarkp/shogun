#!/usr/bin/env python
"""
Test one data file
"""

from numpy import *
import sys

import kernel
import distance
import classifier
import clustering
import distribution
import regression
import preproc
from shogun.Library import Math_init_random

SUPPORTED=['kernel', 'distance', 'classifier', 'clustering', 'distribution',
	'regression', 'preproc']

def _get_name_fun (fnam):
	module=None

	for supported in SUPPORTED:
		if fnam.find(supported)>-1:
			module=supported
			break

	if module is None:
		print 'Module required for %s not supported yet!' % fnam
		return None

	return module+'.test'

def _test_mfile (fnam):
	try:
		mfile=open(fnam, mode='r')
	except IOError, e:
		print e
		return False
	
	indata={}

	name_fun=_get_name_fun(fnam)
	if name_fun is None:
		return False

	for line in mfile:
		param = line.split('=')[0].strip()
		
		if param=='name':
			name=line.split('=')[1].strip().split("'")[1]
			indata[param]=name
		elif param=='symdata' or param=='data':
			indata[param]=_read_matrix(line)
		elif param.startswith('km_') or param.startswith('dm_'):
			indata[param]=_read_matrix(line)
		elif param.find('data_train')>-1 or param.find('data_test')>-1:
			# data_{train,test} might also be prepended by *subkernel*
			indata[param]=_read_matrix(line)
		elif param=='clustering_centers' or param=='clustering_pairs':
			indata[param]=_read_matrix(line)
		else:
			if (line.find("'")==-1):
				indata[param]=eval(line.split('=')[1])
			else: 
				indata[param]=line.split('=')[1].strip().split("'")[1]

	mfile.close()
	fun=eval(name_fun)

	# init random in Shogun to be constant
	Math_init_random(indata['init_random'])

	return fun(indata)

def _read_matrix (line):
	str_line=(line.split('[')[1]).split(']')[0]
	lines=str_line.split(';')
	lis2d=list()

	for x in lines:
		lis=list()
		for y in x.split(','):
			y=y.replace("'","").strip()
			if(y.isalpha()):
				lis.append(y)
			else:
				if y.find('.')!=-1:
					lis.append(float(y))
				else:
					lis.append(int(y))
		lis2d.append(lis)

	return array(lis2d)

for filename in sys.argv:
	if (filename.endswith('.m')):
		res=_test_mfile(filename)
		if res:
			sys.exit(0)
		else:
			sys.exit(1)
