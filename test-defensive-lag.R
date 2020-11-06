library(testthat)

context("checking lag")

test_that("does the right thing for sensible inputs", {
  expect_equivalent(lag(1:10), c(NA, 1,2,3,4,5,6,7,8,9))
  expect_equivalent(lag(1:10,5),c(NA, NA,NA,NA,NA,1,2,3,4,5))
  
})

test_that("does the right thing for problematic inputs", {
  expect_error(lag("hi"))
  expect_error(lag(cars))
  expect_error(lag(1:10,11))
  expect_error(lag(matrix(1:9, nrow = 3, ncol = 3)))
  expect_error(lag(mtcars))
  
  
  
})