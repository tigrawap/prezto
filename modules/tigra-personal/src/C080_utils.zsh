load_ssh_agent_keys() {
	ssh-add ~/.ssh/bitbucket
	ssh-add ~/.ssh/github
	ssh-add ~/.ssh/weka
	ssh-add ~/.ssh/weka_old
	ssh-add ~/.ssh/lab_initial
	ssh-add ~/.ssh/rigger
}

load_ssh_agent_personal() {
	ssh-add ~/.ssh/bitbucket_private
	ssh-add ~/.ssh/github
}
