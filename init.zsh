# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::miro::deps()
#
#>
######################################################################
p6df::modules::miro::deps() {
  ModuleDeps=(p6m7g8-dotfiles/p6common)
}

######################################################################
#<
#
# Function: words miro $MIRO_API_KEY = p6df::modules::miro::profile::mod()
#
#  Returns:
#	words - miro $MIRO_API_KEY
#
#  Environment:	 MIRO_API_KEY
#>
######################################################################
p6df::modules::miro::profile::mod() {

  p6_return_words 'miro' "$"
}
