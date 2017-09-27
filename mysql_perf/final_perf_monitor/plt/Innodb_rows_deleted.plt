set terminal png truecolor
set output "Innodb_rows_deleted.png"
set autoscale
set grid
set title "Innodb_rows_deleted"
set xlabel "VTime(sec)"
set ylabel "delete/s"
set style data lines
sample=1
funx(x)=(x * sample)
funy(y)=(y / sample)
plot "< egrep 'Innodb_row_lock_waits' global_0.out |\
awk 'BEGIN {i=0; pre=0; } \
{ if( i >=1 ) {  requests[i-1] = $2 - pre;} pre = $2; i++;}\
END{ num = NR-1 ; for(i = 0; i < num; i++) printf(\"%d %d \\n\", \
i, requests[i]);}' " \
using (funx($1)):(funy($2)) lw 2 title "Innodb_rows_deleted" 