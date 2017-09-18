function pullrequest () {
		remote=$(command git remote -v | grep "origin" | head -1 | sed "s/.*:\(.*\)\.git.*/\1/")
		if [[ -n $remote ]]; then
		open https://bitbucket.org/$remote/pull-request/new > /dev/null 2> /dev/null
		else
			echo "no remote found"
		fi
}

function originpush(){
	branch=$(git rev-parse --abbrev-ref HEAD)
	git push origin $branch
}

function testdeploy(){
	#cd ~/code/adoptionlink && git checkout develop && git pull origin develop && git push test develop
  echoRun "cd ~/code/adoptionlink"
	echoRun "git checkout develop"
	echoRun "git pull origin develop"
	echoRun "git push test develop"
}


echoRun() {
  echo $fg[green] " > $1"
  eval $1
}
