import pandas as pd
import os

def get_cves_models_with_poc():
	cve_info = {}
	df = pd.read_json('/home/yaowen/IoT_study_new/dataset.json', orient='records')
	type_values = ["Cmd", "Ovf"]
	selected_rows = df[df['type'].isin(type_values)]
	for index, row in selected_rows.iterrows():
		cve_id = row['cve']
		file = "/home/yaowen/IoT_study/all_poc_info/%s" %cve_id
		if os.path.exists(file):
			models = row['model']
			cve_info[cve_id] = []
			for model in models:
				model_str = model.split(":")[0]
				if "_" in model_str:
					model_str = model_str.split("_")[0]
				cve_info[cve_id].append(model_str)
	# print(cve_info)
	return cve_info


def get_models_from_equafl_dataset(data_file):
	models = []
	with open(data_file) as fp:
		for line in fp:
			line = line.strip()[1:-1]
			items = line.split(',')
			image_id = items[0]
			model = items[1][2:-1]
			version = items[2]
			models.append(model)
	# print(models)
	return models

# emulated_models: the list of model that can be emulated by EQUAFL
# cve_info, store the cve information that have PoC, the key is cve, and the value is the model list
def get_verifiable_cves_helper(emulated_models, cve_info):
	verifiable_cve = {}
	for cve_id in cve_info:
		model_list = cve_info[cve_id]
		for model in model_list:
			if model in emulated_models:
				verifiable_cve.setdefault(cve_id, []).append(model)
	return verifiable_cve

def get_verifiable_cves():
	cve_info = get_cves_models_with_poc()
	data_file = "equafl_dataset"
	emulated_models = get_models_from_equafl_dataset(data_file)
	veri_cve_info = get_verifiable_cves_helper(emulated_models, cve_info)
	for cve_id in veri_cve_info:
		print(cve_id, veri_cve_info[cve_id], "\n\n")

get_verifiable_cves()