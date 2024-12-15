Different Variable Types in Terraform:

- Input variables are like function arguments.
- Output values are like function return values.
- Local values are like a function's temporary local variables.

Ex: Creating Variable

variable "image_id" {
  type = string
}

The label after the variable keyword is a name for the variable, which must be unique among all variables in the same module.
This name is used to assign a value to the variable from outside and to reference the variable's value from within the module.

The name of a variable can be any valid identifier except the following: source, version, providers, count, for_each, lifecycle, depends_on, locals.