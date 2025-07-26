#fun calculator 
if (( $# == 0 )); then
  echo -e "
     ██████╗  █████╗  ██╗     
    ██╔════╝ ██╔══██╗ ██║       
    ██║      ███████║ ██║     (s)
    ██║      ██╔══██║ ██║     
    ╚██████╗ ██║  ██║ ███████╗ 
    "
sleep 0.2
echo -e "Hey there, calculate whatever u want!

VERSION : 1.0

USAGE: [sh_script] [number_1] [options] [number_2] 

OPTIONS :
  # For Addition               + 
  # For Subtraction            - 
  # For Multiplication         x 
  # For Division               / 
  "
else
  val1=$1
  val2=$2
  val3=$3
  out=0
  if [[ "$val2" == "+" ]]; then
    ((out=$val1+$val3))
  elif [[ "$val2" == "-" ]]; then
    ((out=$val1-$val3))
  elif [[ "$val2" == "x" ]]; then
    ((out=$val1*$val3))
  elif [[ "$val2" == "/" ]]; then
    ((out=$val1/$val3))
  else
    echo "Oops Invalid Argument!!"
  fi
  echo "Input : $val1 & $val3"
  echo "Output : $out"
fi
 
