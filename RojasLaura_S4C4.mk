


#el latex no depende de nada 

resultados.pdf : plot.pdf plot1.pdf resultados.tex 
	
	pdflatex resultados.tex

plot.pdf: plotdatos.py datos.dat
	python plotdatos.py

plot1.pdf: plotdatos1.py datos1.dat
	python plotdatos1.py

	
datos.dat : makedatos.py
	python makedatos.py>datos.dat


datos1.dat : makedatos1.py
	python makedatos1.py>datos1.dat
 

#guardo makedatos1 en datoa1.dat 

	
	  
