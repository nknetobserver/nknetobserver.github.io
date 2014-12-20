git filter-branch --commit-filter '
        if [ "$GIT_COMMITTER_NAME" = "nknetobserver" ];
        then
                GIT_COMMITTER_NAME="nknetobserver";
                GIT_AUTHOR_NAME="nknetobserver";
                GIT_COMMITTER_EMAIL="";
                GIT_AUTHOR_EMAIL="";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD
