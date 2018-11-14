#!/usr/bin/env groovy
@Library('github.com/stakater/fabric8-pipeline-library@v2.9.4') _

releaseNodeApplication {
  appName = "carbook"
  e2eTestJob = "carbook/e2e-tests-manual/master"
  performanceTestsJob = "carbook/performance-tests-manual/master"
  mockAppsJobName = 'carbook/carbook-mock-apps-manual/master'
  devAppsJobName = 'carbook/carbook-dev-apps-manual/master'
}