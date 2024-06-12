#!/usr/bin/env python3
"""
practicing pymongo.
"""

def list_all(mongo_collection):
	"""
	list all docs
	"""
	result = mongo_collection.find()

	if result.count() == 0:
		return []
	return result
