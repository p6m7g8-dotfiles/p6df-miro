# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::miro::deps()
#
#>
######################################################################
p6df::modules::miro::deps() {
  ModuleDeps=()
}

######################################################################
#<
#
# Function: str str = p6df::modules::miro::prompt::mod()
#
#  Returns:
#	str - str
#
#  Environment:	 P6_DFZ_PROFILE_MIRO
#>
######################################################################
p6df::modules::miro::prompt::mod() {
  local str=""
  local profile="$P6_DFZ_PROFILE_MIRO"

  if p6_string_blank_NOT "$profile"; then
    str="miro:\t\t  ${profile}"
  fi

  p6_return_str "$str"
}

######################################################################
#<
#
# Function: p6df::modules::miro::profile::on(profile, code)
#
#  Args:
#	profile -
#	code - shell code block
#
#  Environment:	 P6_DFZ_PROFILE_MIRO
#>
######################################################################
p6df::modules::miro::profile::on() {
  local profile="$1"
  local code="$2"

  p6_run_code "$code"

  p6_env_export "P6_DFZ_PROFILE_MIRO" "$profile"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::miro::profile::off(code)
#
#  Args:
#	code - shell code block previously passed to profile::on
#
#  Environment:	 P6_DFZ_PROFILE_MIRO
#>
######################################################################
p6df::modules::miro::profile::off() {
  local code="$1"

  p6_env_unset_from_code "$code"
  p6_env_export_un P6_DFZ_PROFILE_MIRO

  p6_return_void
}
