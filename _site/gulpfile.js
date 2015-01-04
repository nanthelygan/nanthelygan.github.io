var gulp = require('gulp');
var uncss = require('gulp-uncss');

gulp.task('default', function() {
  // place code for your default task here
});

gulp.task('uncss-url', function() {
    gulp.src('/css/main.css')
        .pipe(uncss({
            html: [
                'http://127.0.0.1:4000'
            ]
        }))
        .pipe(gulp.dest('./uncss-out'));
});