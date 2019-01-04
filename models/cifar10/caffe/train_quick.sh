#!/usr/bin/env sh

caffe train \
  --solver=cifar10_quick_solver.prototxt $@

# reduce learning rate by factor of 10 after 8 epochs
caffe train \
  --solver=cifar10_quick_solver_lr1.prototxt \
  --snapshot=snapshot/cifar10_iter_4000.solverstate $@
