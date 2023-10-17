all:
	ocamlc -c Mobile_sig.mli
	ocamlc -c Mobile.ml 
	ocamlc -c TPMobile.ml
	ocamlc -o MobileExecutable Mobile.cmo TPMobile.cmo

clean:
	rm -rf MobileExecutable *.cmi *.cmo *~
