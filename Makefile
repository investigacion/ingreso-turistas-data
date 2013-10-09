data/csv/ingreso.csv: data/xlsx/ingreso.xlsx
	ssconvert $< $@

test: data/csv/ingreso.csv
	csvfix check -v $<

.PHONY: test
