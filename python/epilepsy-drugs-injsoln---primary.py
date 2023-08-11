# Evangelos Kontopantelis, David Springate, David Reeves, Darren M Ashcroft, Jose M Valderas, Tim Doran, 2023.

import sys, csv, re

codes = [{"code":"10278","system":"gprdproduct"},{"code":"13200","system":"gprdproduct"},{"code":"14762","system":"gprdproduct"},{"code":"15347","system":"gprdproduct"},{"code":"16609","system":"gprdproduct"},{"code":"17637","system":"gprdproduct"},{"code":"18211","system":"gprdproduct"},{"code":"18457","system":"gprdproduct"},{"code":"20004","system":"gprdproduct"},{"code":"20640","system":"gprdproduct"},{"code":"22763","system":"gprdproduct"},{"code":"23237","system":"gprdproduct"},{"code":"23399","system":"gprdproduct"},{"code":"24637","system":"gprdproduct"},{"code":"25130","system":"gprdproduct"},{"code":"25138","system":"gprdproduct"},{"code":"25903","system":"gprdproduct"},{"code":"26496","system":"gprdproduct"},{"code":"26962","system":"gprdproduct"},{"code":"32500","system":"gprdproduct"},{"code":"34491","system":"gprdproduct"},{"code":"36327","system":"gprdproduct"},{"code":"40070","system":"gprdproduct"},{"code":"44261","system":"gprdproduct"},{"code":"45077","system":"gprdproduct"},{"code":"6858","system":"gprdproduct"},{"code":"7301","system":"gprdproduct"},{"code":"816","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('epilepsy-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["epilepsy-drugs-injsoln---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["epilepsy-drugs-injsoln---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["epilepsy-drugs-injsoln---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
