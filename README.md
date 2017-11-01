# How To Make a DataCamp Course by the Content Team

Notes:

1. This course is about the mechanics of constructing a course.
   The overview of relevant pedagogy will be a separate course.
2. This outline only discusses courses at the moment.
   Additions for practices, mobile, and projects would be very welcome.
   (Or if you feel those should be covered in a separate course or courses,
   please file an issue for discussion.)

## Step 1: Brainstorming

1. What problem(s) will student learn how to solve?
   - How to create a new course with DataCamp.
   - How to create exercises for a course in various languages.
2. What concepts or techniques will students learn?
   - DataCamp's edit-preview-and-publish authoring cycle.
   - What happens behind the scenes when a learner takes a course.
   - How Docker images are built.
   - How to include data sets in a lesson.
   - How to include slides in a lesson.
3. What technologies, packages, or functions will students use?
   - DataCamp's online course editor.
   - DataCamp's SCT library
     (at a high level, so that instructors will know what's possible).
4. What terms or jargon will you define?
   - Teach App.
   - Campus App.
   - SCT.
   - Build process.
5. What analogies will you use to explain concepts?
   - Authoring a course is like writing R Markdown (mixing prose and code).
   - Taking a course is like doing a live coding workshop in a very large class.
6. What mistakes or misconceptions do you expect?
   - Confusion about various numeric IDs (course ID, build ID, etc.).
7. What datasets will you use?
   - [Portal Project Teaching Database][portal-data]

## Step 2: Who is this course for?

Link to [student profiles][profile-site].

- **[Pina][profile-pina]** needs to stay on top of changes to DataCamp's tools and formats.
  She will race through changed sections of this course once in a while,
  both for her own benefit and to help the instructors she is working with.
- After using DataCamp courses in her class for a while,
  **[Catalina][profile-catalina]** has decided to move her own materials onto our platform.
  She will work through this training course *on her own*.
- After taking a dozen DataCamp courses,
  **[Thanh][profile-thanh]** submitted an audition,
  passed with flying colors,
  and is about to start building a paid course.
  He will work through this material *with the help of a Curriculum Lead*.

## Step 3: What will the student do along the way?

### Create a pure multiple choice question.

FIXME

### Create a console exercise.

FIXME

### Create a normal exercise.

FIXME

### Create a tabbed console exercise.

FIXME

### Write pre-exercise code.

FIXME

### Create a bullet console exercise.

FIXME

### Create a video exercise.

FIXME

### Create a new course.

FIXME.

### Preview a course.

FIXME

### Specify course metadata.

FIXME

### Specify course requirements.

FIXME (per language?).

### Write a student correctness test.

FIXME

### Add a diagram.

FIXME

### Add a data set.

FIXME

## Step 4: How are the concepts connected?

1. Basic Workflow
   1. How do I log in?
   1. How do I view a course?
   1. What's the basic structure of a DataCamp course?
   1. How do I preview a course?
   1. How do I edit an existing multiple-choice exercise?
   1. How do I save changes?
   1. Where are changes saved?
   1. How do I create a new multiple-choice exercise?
1. Exercise Types
   1. What's a console exercise?
   1. What happens when a learner submits code?
   1. How does DataCamp check the learner's submission?
   1. How does the backend check what the user typed?
   1. How does the backend check the output of the user's code?
   1. How does the backend check the structure of the user's code?
   1. What's a normal exercise?
   1. What's a tabbed console exercise?
   1. What's a bullet console exercise?
   1. What's a video exercise?
   1. What other specialized exercise types are available?
   1. How does the backend handle exercises that create images?
1. Slides
   1. FIXME
1. The Bigger Picture
   1. What metadata does a course have?
   1. Where and how will my Curriculum Lead give me feedback on my course?
   1. Where does the learner's code actually run?
   1. How can I add data sets to a course?
   1. How do I refer to data sets within a course?
   1. How can I add diagrams and images to a course?
   1. How can I add extra packages and libraries to a course?
   1. How can I tell when something has gone wrong with a build?
   1. What are the symptoms of some common build errors?
1. Working Directly in GitHub
   1. How does DataCamp use GitHub repositories?
   1. How should I author chapter files if I am using GitHub?
   1. How do I synchronize online preview with changes in GitHub?
   1. How do I upload data sets, images, and other resources using GitHub?
   1. How should I manage branches when using GitHub?

The datasets are:

- [Portal Project Teaching Database][portal-data]

## Step 5: Course overview

**Course Description**

This course explain how to build a DataCamp course using our online editor.
You will learn how to create exercise of various types
and how to use each one to create content that your students will appreciate.
After you take this course,
you'll be ready to make one of your own!

**Learning Objectives**

- Learn to write great exercises.
- Avoid DataCamp course developers hassling you about minor style issues.

**Prerequisites**

- "Too Much About Teaching in Too Little Time" (introduction to pedagogy)

## Helpful Resources

- [DataCamp technical documentation][datacamp-how]
- Huston: *[Teaching What You Don't Know][huston-teaching]*
- Lang: *[Small Teaching][lang-teaching]*
- Wilson: *[How to Teach Programming (and Other Things)][wilson-teaching]*

[datacamp-how]: https://www.datacamp.com/teach/documentation
[huston-teaching]: https://www.amazon.com/Teaching-What-You-Dont-Know/dp/0674035801/
[lang-teaching]: https://www.amazon.com/Small-Teaching-Everyday-Lessons-Learning/dp/1118944496/
[portal-data]: https://figshare.com/articles/Portal_Project_Teaching_Database/1314459
[profile-catalina]: https://github.com/datacamp/learner-profiles#catalina
[profile-pina]: https://github.com/datacamp/learner-profiles#pina
[profile-thanh]: https://github.com/datacamp/learner-profiles#thanh
[wilson-teaching]: http://third-bit.com/teaching/
