
for i in ./public/template/HTML/*.html; do
	html2haml $i > ${i%}.haml --trace; 
done