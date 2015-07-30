var gulp = require('gulp');
var connect = require('gulp-connect');
var sass = require('gulp-sass');
var autoprefixer = require('gulp-autoprefixer');
var uglify = require('gulp-uglify');

// //gulp.task('task_name', function_to_perform )
gulp.task('server', function() {
  connect.server({
    livereload: true
  });
});

gulp.task('minify', function() {
  gulp.src('./bundle.js')
    .pipe(uglify())
    .pipe(gulp.dest('deploy'));
})

gulp.task('html', function() {
  gulp.src('./*.html')
    .pipe(connect.reload()); //reload server when a change occurs
});

gulp.task('sass', function() {
  gulp.src('./*.scss')
    .pipe(sass())
    .pipe(autoprefixer())
    .pipe(gulp.dest('css'))
    .pipe(connect.reload());
});

gulp.task('watch', function() { //watch for a change
  gulp.watch('./*.scss', ['sass']);
  gulp.watch(['./*.html'],['html']); //watch ([directory where files are], [perform 'html' task])
});
// // if nothing is entered after gulp in terminal it will start 'server' and run 'watch'
gulp.task('default', ['server', 'watch']);