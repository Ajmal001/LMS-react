Y=2018
M=9
D=10
i=16
comment="  Fixed editors"

export GIT_COMMITTER_DATE="$Y-$M-$D 10:$i:34"
export GIT_AUTHOR_DATE="$Y-$M-$D 10:$i:34"
# git add commit.md -f
git add .
git commit --date="$Y-$M-$D 10:$i:34" -m "$comment"
git push