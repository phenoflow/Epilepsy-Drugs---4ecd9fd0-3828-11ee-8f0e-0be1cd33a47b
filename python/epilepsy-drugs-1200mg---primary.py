# Evangelos Kontopantelis, David Springate, David Reeves, Darren M Ashcroft, Jose M Valderas, Tim Doran, 2023.

import sys, csv, re

codes = [{"code":"10111","system":"gprdproduct"},{"code":"1158","system":"gprdproduct"},{"code":"11696","system":"gprdproduct"},{"code":"12880","system":"gprdproduct"},{"code":"12931","system":"gprdproduct"},{"code":"13112","system":"gprdproduct"},{"code":"13890","system":"gprdproduct"},{"code":"14763","system":"gprdproduct"},{"code":"1550","system":"gprdproduct"},{"code":"16661","system":"gprdproduct"},{"code":"17152","system":"gprdproduct"},{"code":"18762","system":"gprdproduct"},{"code":"2082","system":"gprdproduct"},{"code":"2085","system":"gprdproduct"},{"code":"2388","system":"gprdproduct"},{"code":"24153","system":"gprdproduct"},{"code":"24821","system":"gprdproduct"},{"code":"2823","system":"gprdproduct"},{"code":"2830","system":"gprdproduct"},{"code":"32900","system":"gprdproduct"},{"code":"33106","system":"gprdproduct"},{"code":"34120","system":"gprdproduct"},{"code":"34150","system":"gprdproduct"},{"code":"34370","system":"gprdproduct"},{"code":"34626","system":"gprdproduct"},{"code":"34632","system":"gprdproduct"},{"code":"34707","system":"gprdproduct"},{"code":"34883","system":"gprdproduct"},{"code":"34904","system":"gprdproduct"},{"code":"3731","system":"gprdproduct"},{"code":"3734","system":"gprdproduct"},{"code":"3845","system":"gprdproduct"},{"code":"3886","system":"gprdproduct"},{"code":"4480","system":"gprdproduct"},{"code":"4495","system":"gprdproduct"},{"code":"45344","system":"gprdproduct"},{"code":"46888","system":"gprdproduct"},{"code":"46972","system":"gprdproduct"},{"code":"584","system":"gprdproduct"},{"code":"6949","system":"gprdproduct"},{"code":"7108","system":"gprdproduct"},{"code":"7394","system":"gprdproduct"},{"code":"9168","system":"gprdproduct"},{"code":"9281","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('epilepsy-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["epilepsy-drugs-1200mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["epilepsy-drugs-1200mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["epilepsy-drugs-1200mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
