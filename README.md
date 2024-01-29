# bash-script

Bash script template including parameters, options, and ini.

## Result

```console
 test_dir/my_script.sh -ab
FLAG_A=1
FLAG_B=1
FLAG_C=
C_ARG=
FLAG_D=
D_ARG=
FLAG_OPTION1=
FLAG_OPTION2=
ARG1=
ARG2=
ini1=baz
ini2=qux

$ test_dir/my_script.sh -c CCC -d DDD
FLAG_A=
FLAG_B=
FLAG_C=1
C_ARG=CCC
FLAG_D=1
D_ARG=DDD
FLAG_OPTION1=
FLAG_OPTION2=
ARG1=
ARG2=
ini1=baz
ini2=qux

$ test_dir/my_script.sh --option1 --option2
FLAG_A=
FLAG_B=
FLAG_C=
C_ARG=
FLAG_D=
D_ARG=
FLAG_OPTION1=1
FLAG_OPTION2=1
ARG1=
ARG2=
ini1=baz
ini2=qux

$ test_dir/my_script.sh foo bar
FLAG_A=
FLAG_B=
FLAG_C=
C_ARG=
FLAG_D=
D_ARG=
FLAG_OPTION1=
FLAG_OPTION2=
ARG1=foo
ARG2=bar
ini1=baz
ini2=qux

$ test_dir/my_script.sh -ab -c CCC -d DDD --option1 --option2 foo bar
FLAG_A=1
FLAG_B=1
FLAG_C=1
C_ARG=CCC
FLAG_D=1
D_ARG=DDD
FLAG_OPTION1=1
FLAG_OPTION2=1
ARG1=foo
ARG2=bar
ini1=baz
ini2=qux

$ test_dir/my_script.sh --option3
getopt: unrecognized option '--option3'
getopt has failed. Please check your command line options.
```
