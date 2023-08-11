# Evangelos Kontopantelis, David Springate, David Reeves, Darren M Ashcroft, Jose M Valderas, Tim Doran, 2023.

import sys, csv, re

codes = [{"code":"10007","system":"gprdproduct"},{"code":"12932","system":"gprdproduct"},{"code":"13524","system":"gprdproduct"},{"code":"1370","system":"gprdproduct"},{"code":"1398","system":"gprdproduct"},{"code":"15227","system":"gprdproduct"},{"code":"15338","system":"gprdproduct"},{"code":"15851","system":"gprdproduct"},{"code":"2062","system":"gprdproduct"},{"code":"2077","system":"gprdproduct"},{"code":"22286","system":"gprdproduct"},{"code":"24177","system":"gprdproduct"},{"code":"27113","system":"gprdproduct"},{"code":"28345","system":"gprdproduct"},{"code":"30763","system":"gprdproduct"},{"code":"34144","system":"gprdproduct"},{"code":"34506","system":"gprdproduct"},{"code":"34592","system":"gprdproduct"},{"code":"34606","system":"gprdproduct"},{"code":"34958","system":"gprdproduct"},{"code":"39715","system":"gprdproduct"},{"code":"40395","system":"gprdproduct"},{"code":"41726","system":"gprdproduct"},{"code":"4195","system":"gprdproduct"},{"code":"432","system":"gprdproduct"},{"code":"4496","system":"gprdproduct"},{"code":"4502","system":"gprdproduct"},{"code":"4913","system":"gprdproduct"},{"code":"4982","system":"gprdproduct"},{"code":"5076","system":"gprdproduct"},{"code":"5722","system":"gprdproduct"},{"code":"5907","system":"gprdproduct"},{"code":"596","system":"gprdproduct"},{"code":"5977","system":"gprdproduct"},{"code":"6047","system":"gprdproduct"},{"code":"6504","system":"gprdproduct"},{"code":"660","system":"gprdproduct"},{"code":"6820","system":"gprdproduct"},{"code":"6999","system":"gprdproduct"},{"code":"7023","system":"gprdproduct"},{"code":"7208","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('epilepsy-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["epilepsy-drugs-1000mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["epilepsy-drugs-1000mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["epilepsy-drugs-1000mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
