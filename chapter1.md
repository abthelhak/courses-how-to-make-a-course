---
title: Sample Exercises
description: >-
  These exercises will teach you how to write your own exercises. Notice how the
  Chapter title is written in Title Case.

--- type:VideoExercise lang:r xp:50 skills:1 key:e897462746
## A Video Exercise

Video exercises should just contain bullet points describing the things you want to talk about.

* Each chapter should start with a video exercise.
* Don't have two consecutive video exercises.
* The effort to make a video grows faster than linearly with its length; try to limit it to 4 minutes/600 words of content. 
* It is usually easier to write the scripts for the videos after you've written the conding and multiple choice exercises.
* Video scripts are stored in text files in the `scripts` directory of the repository. 
* You'll have to add those files with git; it isn't currently supported with Teach.

*** =video_link
//player.vimeo.com/video/154783078

*** =video_hls
//videos.datacamp.com/transcoded/000_placeholders/v1/hls-temp.master.m3u8

--- type:MultipleChoiceExercise lang:r xp:50 skills:1 key:fb611e1b51
## A Multiple Choice Exercise

This block of text should reiterate what was mentioned in the video, since it is very easy for students to miss important points the first time around.  You are writing markdown here, so you can do *italics*, **bold**, and `code`.

You can also include code blocks. These aren't executed, so you have to manually include the output in comments. DataCamp style is to use `## ` before output lines.

```{r}
sqrt(1:3)
## [1] 1.000000 1.414214 1.732051
```

The last sentence before the instruction block should be the question for the student to answer.  For example:

Which function do you use to calculate a square root?

*** =instructions

* The answers should be provided as an unordered list.
* (Numbering happens automatically in the DataCamp app.)
* Usually, questions should have four or five responses.
* Press CTRL+H to see the hint.
* Press CTRL_SHIFT_ENTER to Submit your answer.

*** =hint

This hint is provided when students ask for help. It is written in *markdown*.

*** =pre_exercise_code
```{r}
# This code is run before the student receives their workspace.
# A common use is to load packages.
library(utils)
```

*** =sct
```{r}
# SCT means "Solution Correctness Test"
# They are used to check that the exercise has been answered correctly.
test_mc(
  2,
  feedback_msgs = c(
    "Not this answer.",
    "Say something nice, then repeat the most important thing the student should have learned in this exercise.",
    "Not this answer either.",
    "This answer is really wrong."
  )
)
```

--- type:MultipleChoiceExercise lang:r xp:50 skills:1 key:37c9d82c55
## Another Multiple Choice Exercise

You can also write multiple choice exercises where more than one answer is correct. In this case, write the statements in the text block before the instructions, and use the instructions to let the student choose which statements are correct. For example:

Which of the following statements are true?

* R is a programming language.
* R is a letter of the Roman alphabet.
* R is a noise that pirates make.
* R is a type of vegetable.
* R is a type of animal with a long nose. 

*** =instructions

* 1, 3, and 5.
* 2, 3, and 4.
* 1, 4, and 5.
* 1, 2, and 3.

*** =hint

* You can write bullet points in hints, if there are several things that a student might need help with.
* This is useful for longer exercises.

*** =pre_exercise_code
```{r}

```

*** =sct
```{r}
msgs <- list(
  correct    = "Well done! R has several meanings.",
  bad_veg    = "R is not a vegetable. Are you thinking of artichoke?",
  bad_animal = "R is not an animal. Are you thinking of aardvark?"
)
test_mc(
  4,
  feedback_msgs = with(msgs, c(bad_animal, bad_veg, paste(bad_veg, bad_animal), correct))
)
```

--- type:NormalExercise lang:r xp:100 skills:1 key:f54715376f
## A Coding Exercise

Coding exercises should form the bulk of the course. Just as with multiple choice exercises, you should begin by reiterating the important points from the video. You should also mention the datasets that are going to be used in the exercise, and the packages and functions that will be covered. If you mention a function, be sure to link to its RDocumentation page, like this. 

[`var()`](https://www.rdocumentation.org/packages/stats/topics/var) calculates variance.

DataCamp style is to write parentheses after function names.

For coding exercises it is a really good idea to include a template of how the code should look.

```{r}
ggplot(cars, aes(speed, dist)) +
  geom_point()
```

The introductory content for an exercise should usually be between 5 and 15 lines.

*** =instructions

If you pre-define any variables (see the `pre_exercise_code` block), you should mention that here. For example:

`triangles`, containing Pythagorean triples, has been pre-defined in your workspace.

* Instructions should be listed in bullet points.
* Each instruction should be a complete sentence, ending with a period.
* To make an exercise easier, explicitly mention functions that need to be called, and arguments that need to be passed.
    * For complex instructions, you can use nested bullets.
        * ... but don't use three levels of nesting. 
* Usually exercises should consist of no more than four tasks. 
* Pressing CTRL+H twice displays the solution code.

*** =hint

* It is often useful to have at least one bullet hint for each instruction.
* The harder the exercise, the more hints you need.

*** =pre_exercise_code
```{r}
triangles <- data.frame(
  x          = c(3, 5, 8),
  y          = c(4, 12, 15),
  hypotenuse = c(5, 13, 17)
)
```

*** =sample_code
```{r}
# Start by mentioning pre-defined variables:
# triangles has been pre-defined for you
triangles

# Use 3 underscores to denote things that the students
# have to fill in
___

# Comments should match one to one with instructions
___(___)

# If the exercise requires students to assign a variable,
# write the name here, with a <-
x <- ___(___, ___)

# Comments should be limited to 60 chars
calc_hypo <- ___
```

*** =solution
```{r}
# Start by mentioning pre-defined variables:
# triangles has been pre-defined for you
triangles

# Use 3 underscores to denote things that the students
# have to fill in
2 * triangles$x

# Comments should match one to one with instructions
sqrt(triangles$hypotenuse)

# If the exercise requires students to assign a variable,
# write the name here, with a <-
x <- with(triangles, x ^ 2 + y ^ 2)

# Comments should be limited to 60 chars
calc_hypo <- function(x, y) {
  x ^ 2 + y + 2
}
```

*** =sct
```{r}
# Don't worry about writing tests for coding exercises;
# your DataCamp course creator will do this for you.
# You should be aware of the common types of test that can be performed.
ex() %>% {
  # You can check that an error wasn't thrown
  check_error(.)
  
  # You can check that an expression wrote output to the console
  check_output_expr(., "2 * triangles$x")
  
  # You can check that a function was called
  check_function(., "sqrt") %>% {
    # ... with a specific argument
    check_arg(., "x")
  }
  
  # You can check that a variable was assigned
  check_object(., "x") %>%
    # ... and that it has the right value
    check_equal()
  
  # You can check that a function was defined
  check_fun_def(., "calc_hypo") %>%
    # ... with the right arguments
    check_arguments()
    
  # You can check the result of arbitrary code, 
  # which is useful to make sure that the function works
  # This check that the expression runs
  check_expr(., "calc_hypo(3, 4)") %>%
    # ... and returns a result (rather than throwing an error)
    check_result() %>%
    # ... and that it has the correct value
    check_equal()
}
success_msg("Wow! You now know how to write a great exercise.")
```
