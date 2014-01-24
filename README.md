Task optimization chart
=======================

Automated task optimization time chart based on http://xkcd.com/1205/. This R project prepares a chart similar to the one depicted in the xkcd webcomic:

![](http://imgs.xkcd.com/comics/is_it_worth_the_time.png "Don't forget the time you spend finding the chart to look up what you save. And the time spent reading this reminder about the time spent. And the time trying to figure out if either of those actually make sense. Remember, every second counts toward your life total, including these right now.")

An imitation of the original chart in vector format is placed in the ./raw directory. Download as a .svg file for viewing.

Additional features
-------------------

It is expected that you will be able to specify additional characteristics for the automated chart, such as:

- Alternative time span
- Number of people who perform the task
- Daily commitment to optimization (chart should show how long the optimiation would take to be completed, in work periods)


Requirements
----------------------------------------
This project requires the use of the [ggplot2](https://github.com/hadley/ggplot2) package to prepare the chart, and the [reshape2](https://github.com/hadley/reshape) package to manipulate the data.

The [extrafont](https://github.com/wch/extrafont) package should be used to load the HumorSans font. The ttf file is located in the ./raw directory.

The grid package is included with each base R install.


Issues
------------------------------------------
**extrafont**: Some issues have been found on using this font with ggplot2 in Windows, see relevant comments within the code (if any) to solve.

**Language**: Currently, the project is documented in [spanglish](https://en.wikipedia.org/wiki/Spanglish).


Attribution
-------------------------------------------
The original webcomic was posted in http://xkcd.com/1205/

The Humor-Sans font was prepared by [ch00f](http://antiyawn.com/uploads/Humor-Sans.ttf), and was presented in the [xkcd sucks](http://xkcdsucks.blogspot.com/2009/03/xkcdsucks-is-proud-to-present-humor.html) blog.


Other xkcd comics relevant to this work
----------------------------------------

#### Suggested commit description scheme
![](http://imgs.xkcd.com/comics/git_commit.png "Merge branch 'asdfasjkfdlas/alkdjf' into sdkjfls-final")

#### A rough overview of the expected roadmap for the project
![](http://imgs.xkcd.com/comics/automation.png "'Automating' comes from the roots 'auto-' meaning 'self-', and 'mating', meaning 'screwing'.")



# Is It *Really* Worth the Time?
