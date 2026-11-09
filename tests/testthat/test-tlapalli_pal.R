test_that("tlapalli_pal returns all colors by default", {
  expect_equal(tlapalli_pal("Ambar"), tlapalli[["Ambar"]])
})

test_that("every palette is valid and can be interpolated", {
  for (pal in names(tlapalli)) {
    cols <- tlapalli_pal(pal)
    expect_true(all(grepl("^#[0-9A-Fa-f]{6}$", cols)), info = pal)
    expect_length(tlapalli_pal(pal, n = 50, type = "continuous"), 50)
    expect_equal(tlapalli_pal(pal, direction = -1), rev(cols), info = pal)
  }
})

