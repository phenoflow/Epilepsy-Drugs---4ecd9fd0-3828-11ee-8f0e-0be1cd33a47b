# Evangelos Kontopantelis, David Springate, David Reeves, Darren M Ashcroft, Jose M Valderas, Tim Doran, 2023.

import sys, csv, re

codes = [{"code":"10694","system":"gprdproduct"},{"code":"107","system":"gprdproduct"},{"code":"16542","system":"gprdproduct"},{"code":"17054","system":"gprdproduct"},{"code":"17429","system":"gprdproduct"},{"code":"21441","system":"gprdproduct"},{"code":"24627","system":"gprdproduct"},{"code":"29497","system":"gprdproduct"},{"code":"5874","system":"gprdproduct"},{"code":"6624","system":"gprdproduct"},{"code":"7498","system":"gprdproduct"},{"code":"790","system":"gprdproduct"},{"code":"8971","system":"gprdproduct"},{"code":"9065","system":"gprdproduct"},{"code":"9430","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('epilepsy-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["epilepsy-drugs-125mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["epilepsy-drugs-125mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["epilepsy-drugs-125mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
