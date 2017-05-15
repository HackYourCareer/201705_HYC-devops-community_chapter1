job('JobDSLDemo') {    
  scm {       
     git('https://github.com/adamwalach/pipeline-test.git')
  }
  triggers {
    scm('H/15 * * * *')
  }
  steps {
     shell('cowsay -f ghostbusters Who you Gonna Call')
  }
}
