name := mycard

clean:
	rm -f $(name).aux $(name).log

cleanall: clean
	rm -f $(name).pdf

pdf:
	pdflatex $(name).tex

qrcode:
	cat $(name).vcard | qrencode -o images/qrcode.png
