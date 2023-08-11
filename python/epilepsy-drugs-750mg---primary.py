# Evangelos Kontopantelis, David Springate, David Reeves, Darren M Ashcroft, Jose M Valderas, Tim Doran, 2023.

import sys, csv, re

codes = [{"code":"10273","system":"gprdproduct"},{"code":"17177","system":"gprdproduct"},{"code":"18077","system":"gprdproduct"},{"code":"19500","system":"gprdproduct"},{"code":"2128","system":"gprdproduct"},{"code":"24176","system":"gprdproduct"},{"code":"29806","system":"gprdproduct"},{"code":"35164","system":"gprdproduct"},{"code":"35835","system":"gprdproduct"},{"code":"3881","system":"gprdproduct"},{"code":"5587","system":"gprdproduct"},{"code":"5830","system":"gprdproduct"},{"code":"6936","system":"gprdproduct"},{"code":"7209","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('epilepsy-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["epilepsy-drugs-750mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["epilepsy-drugs-750mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["epilepsy-drugs-750mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
