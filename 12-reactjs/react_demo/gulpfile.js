var gulp = require('gulp');
var connect = require('gulp-connect');
var sass = require('gulp-sass');
var autoprefixer = require('gulp-autoprefixer');

var browserify = require('browserify');
var source = require('vinyl-source-stream');

gulp.task('server', function() {
  connect.server({
    livereload: true
  });
});

gulp.task('html', function() {
  gulp.src('./*.html')
    .pipe(connect.reload());
});

gulp.task('sass', function() {
  gulp.src('./src/*.scss')
    .pipe(sass())
    .pipe(autoprefixer())
    .pipe(gulp.dest('./build/css'))
    .pipe(connect.reload());
});

gulp.task('browserify', function() {
  return browserify('./src/app.js', {
    transform: ['reactify']
  }).bundle()
    .pipe(source('app.js'))
    .pipe(gulp.dest('./build/'))
    .pipe(connect.reload());
});

gulp.task('watch', function() {
  gulp.watch('./src/*.js', ['browserify'])
  gulp.watch('./src/*.scss', ['sass']);
  gulp.watch(['./*.html'],['html']);
});

gulp.task('default', ['server', 'watch']);