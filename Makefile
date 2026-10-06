update_list:
	rm -f ./pfsense_list
	rm -f ./pfsense_list_additional
	rm -f ./pfsense_list_additional2
	rm -f ./ips
	rm -f ./tlds_PUT_MANUALLY

	make -C "$(PATH_PFSENSE)/blacklist/"
	mv $(PATH_PFSENSE)/blacklist/out_pfsense_* ./

	mv ./out_pfsense_list ./pfsense_list
	mv ./out_pfsense_list_additional ./pfsense_list_additional
	mv ./out_pfsense_list_additional2 ./pfsense_list_additional2
	mv ./out_pfsense_ips ./ips
	mv ./out_pfsense_tlds_put_manually ./tlds_PUT_MANUALLY

	#mv "$(PATH_PFSENSE)/blacklist/out_pfsense_list" ./pfsense_list
	#mv "$(PATH_PFSENSE)/blacklist/out_pfsense_list_additional" ./pfsense_list_additional
	#mv "$(PATH_PFSENSE)/blacklist/out_pfsense_list_additional2" ./pfsense_list_additional2
	#mv "$(PATH_PFSENSE)/blacklist/out_pfsense_ips ./ips"
	#mv "$(PATH_PFSENSE)/blacklist/out_pfsense_tlds_put_manually" ./tlds_PUT_MANUALLY

