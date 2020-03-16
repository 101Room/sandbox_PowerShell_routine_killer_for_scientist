$limitCounter = 100	# Set limit for increasing max mass
$counter = 50		# Set mass from which we will start
$step = 10		# Set how much increase the mass for each step

$inputFile = Read-Host "Enter FULL adress for the input file (like C:\blah-blah\in.crack)"
# IMPORTANT! In directory with input must be ONLY input file!
# You may uncomment next line and use it insted the last line
#$inputFile = 'C:\Users\... paste there full adress for your script'

$resultsDir = Read-Host "Enter adress there you want to save results"
# You may uncomment next line and use it insted the last line
#$resultsDir = 'C:\Users\... paste there adress of directory'

$nameDir = Read-Host "Enter name for folders with results"
# You may uncomment next line and use it insted the last line
#$nameDir = 'mass1'

$pattern = 'mass		1'	# The parameter which we going to change (copy-paste fragment from input)

function Rewrite-Parameter {				# This function will rewrite parameter
	CD (Split-Path $inputFile)
	(Get-Content $inputFile) | ForEach-Object{	# Getting content from the input file
		if($_ -match $pattern){			# We have catch the line which contains parameter
			"$pattern $counter.0"		# Increase mass with counter
		} else {
			$_				# Output line as it is if it does't contains parameter
		}
	} | Set-Content $inputFile			# Writing in the input file as it was or changed content
}

function Save-Results {					# This function for saving file
	md $resultsDir\$nameDir-$counter			# Create directory where we will move output
	$dirWithOutput = Split-Path $inputFile		# Set that outputs we will find in directory with input file
	CD $dirWithOutput
	$Files = GCI -path $dirWithOutput | Where-object {$_.name -ne "in.crack"}	# Find which files not are input file
	foreach ($file in $files){move-item -path $file -destination $resultsDir\$nameDir-$counter}
	# We moved all output files (all files except input file) in persinal folder
}

# This is the end of definitions and start for our working process
for ($counter; $counter -le $limitCounter; $counter=$counter+$step){	# -le means less or eqal
	Rewrite-Parameter
	lmp_serial -in $inputFile -pk omp 4 -sf omp			# Running LAMMPS
	Save-Results
}