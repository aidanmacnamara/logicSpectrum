# get the latest version of CNORode

require(CNORode)

data(CNOlistPB, package="CNORdt")
load("data/true_params.RData")
m <- readSIF("data/true_model.sif")
plotModel(m)

sim <- getLBodeDataSim(CNOlistPB, m, true_params, initial_state=0, maxStepSize=0.05)

CNOlist = CNOlistPB
CNOlist$valueSignals = sim
plotCNOlist(CNOlist)
