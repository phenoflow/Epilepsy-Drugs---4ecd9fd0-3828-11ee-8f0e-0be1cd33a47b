# Evangelos Kontopantelis, David Springate, David Reeves, Darren M Ashcroft, Jose M Valderas, Tim Doran, 2023.

import sys, csv, re

codes = [{"code":"15429","system":"gprdproduct"},{"code":"18350","system":"gprdproduct"},{"code":"20966","system":"gprdproduct"},{"code":"3110","system":"gprdproduct"},{"code":"37696","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('epilepsy-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["epilepsy-drugs-clobazam---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["epilepsy-drugs-clobazam---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["epilepsy-drugs-clobazam---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)