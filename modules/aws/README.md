General info:

1- You need to declare resources in main.tf/modules and call them in main.tf/main
2- You need to declare input variables in variables/modules and call them in variables/main
3- You need to declare outputs in outputs/modules and call them in outputs/main

Steps:

1- Create resource in module/main.tf
2- Create same resource in global main.tf and specify input variables
3- Create needed variable in module/variables.tf (description , data type and validation)
4- Create same variable in global variables.tf (just add data type)
5- Add variable to tf.tfvars and tf.tfvars.example
6- Output if required