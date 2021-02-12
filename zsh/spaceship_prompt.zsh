
# SPACESHIP PROMPT

SPACESHIP_PROMPT_ORDER=(
  vi_mode
  venv
  user
  host
  dir
  git
  kubectl
  # node
  # docker
  line_sep
  char
)

SPACESHIP_RPROMPT_ORDER=(
    jobs
)

SPACESHIP_PROMPT_ADD_NEWLINE='true'
SPACESHIP_PROMPT_SEPARATE_LINE='true'

SPACESHIP_USER_SHOW='true'
SPACESHIP_TIME_SHOW='true'

# CHAR
SPACESHIP_CHAR_SYMBOL='➜'
SPACESHIP_CHAR_SUFFIX=' '

# # USER
SPACESHIP_DIR_SHOW='true'
SPACESHIP_USER_PREFIX="" # remove `with` before username
# SPACESHIP_USER_SUFFIX="" # remove space before host

# # HOST
# # Result will look like this:
# #   username@:(hostname)
# SPACESHIP_HOST_PREFIX="@:("
# SPACESHIP_HOST_SUFFIX=") "

# # DIR
SPACESHIP_DIR_PREFIX=' ' # disable directory prefix, cause it's not the first section
SPACESHIP_DIR_TRUNC='' # show only last directory
SPACESHIP_DIR_TRUNC_REPO='true'
# SPACESHIP_DIR_COLOR='cyan'
# SPACESHIP_DIR_SUFFIX=SPACESHIP_PROMPT_DEFAULT_SUFFIX
SPACESHIP_DIR_TRUNC_PREFIX=''

# # GIT
# SPACESHIP_GIT_SHOW='true'
# # Disable git symbol
# SPACESHIP_GIT_SYMBOL="" # disable git prefix
# SPACESHIP_GIT_BRANCH_PREFIX="" # disable branch prefix too
# SPACESHIP_GIT_BRANCH_COLOR='magenta'
# # Wrap git in `git:(...)`
SPACESHIP_GIT_PREFIX=''
# SPACESHIP_GIT_SUFFIX=") "
# SPACESHIP_GIT_BRANCH_SUFFIX="" # remove space after branch name
# # Unwrap git status from `[...]`
SPACESHIP_GIT_STATUS_PREFIX="["
SPACESHIP_GIT_STATUS_SUFFIX="]"

# # NODE
SPACESHIP_NODE_PREFIX=""
SPACESHIP_NODE_SUFFIX=" "
SPACESHIP_NODE_SYMBOL="@"

# # DOCKER
SPACESHIP_DOCKER_SHOW='true'
SPACESHIP_DOCKER_PREFIX=''
# SPACESHIP_DOCKER_PREFIX="docker:("
# SPACESHIP_DOCKER_SUFFIX=") "
# SPACESHIP_DOCKER_SYMBOL=""

# # VENV
SPACESHIP_VENV_SHOW='true'
# SPACESHIP_VENV_PREFIX='( '
SPACESHIP_VENV_SUFFIX=''
SPACESHIP_VENV_SYMBOL=''
SPACESHIP_VENV_COLOR='yellow'

# PYENV
# SPACESHIP_PYENV_PREFIX="python:("
# SPACESHIP_PYENV_SUFFIX=") "
# SPACESHIP_PYENV_SYMBOL=""

# KUBECTL
SPACESHIP_KUBECTL_SHOW="true"
SPACESHIP_KUBECTL_VERSION_SHOW="false"
SPACESHIP_KUBECONTEXT_SHOW="true"
SPACESHIP_KUBECTL_PREFIX=""
# SPACESHIP_KUBECTL_SUFFIX=""
SPACESHIP_KUBECONTEXT_COLOR="cyan"
SPACESHIP_KUBECTL_SYMBOL="@"
