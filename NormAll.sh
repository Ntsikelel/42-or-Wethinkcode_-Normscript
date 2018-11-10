#! /bin/bash
#By Ntsikelelo Metseeme nmetseem@student.wethinkcode.co.za 2018

 printf "\x1b[35m\t\t\t\t██╗    ██╗███████╗    ████████╗██╗  ██╗██╗███╗   ██╗██╗  ██╗     ██████╗ ██████╗ ██████╗ ███████╗
\t\t\t\t██║    ██║██╔════╝    ╚══██╔══╝██║  ██║██║████╗  ██║██║ ██╔╝    ██╔════╝██╔═══██╗██╔══██╗██╔════╝
\t\t\t\t██║ █╗ ██║█████╗         ██║   ███████║██║██╔██╗ ██║█████╔╝     ██║     ██║   ██║██║  ██║█████╗
\t\t\t\t██║███╗██║██╔══╝         ██║   ██╔══██║██║██║╚██╗██║██╔═██╗     ██║     ██║   ██║██║  ██║██╔══╝
\t\t\t\t╚███╔███╔╝███████╗       ██║   ██║  ██║██║██║ ╚████║██║  ██╗    ╚██████╗╚██████╔╝██████╔╝███████╗███████╗
\t\t\t\t ╚══╝╚══╝ ╚══════╝       ╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝     ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝╚══════╝
                                                                                                         "

printf "\x1b[32m Norm Source Files v1.2 \n\x1b[0m"
printf "\x1b[34m \nPlease wait ........ \n\x1b[0m"
find . -name "*.c" -exec norminette -R CheckForbiddenSourceHeader {} \; >> NormSource.log
printf "\x1b[37m Done Part 1 \n\x1b[0m"
printf "\x1b[31mcat NormSource.log or cat NormSource.log | grep \"Error\"\n\x1b[0m"

printf "\x1b[32m Norm Header Files\x1b[0m"
printf "\x1b[34m Please wait ........ \n\x1b[0m"
find . -name "*.h" -exec norminette -R CheckForbiddenSourceHeader {} \; >> NormHeader.log
printf "\x1b[37m Done Part 2 \n\x1b[0m"
printf "\x1b[31mcat NormHeader.log or cat NormHeader.log | grep \"Error\"\n\x1b[0m"

cat NormSource.log 
cat NormHeader.log

rm NormSource.log 
rm NormHeader.log

