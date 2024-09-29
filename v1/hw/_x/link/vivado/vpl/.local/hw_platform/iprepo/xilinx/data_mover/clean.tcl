
set Entries [glob -nocomplain *.log *.jou .Xil .nsf* *.pb]

foreach Entry $Entries {
	catch {file delete -force $Entry}
}
