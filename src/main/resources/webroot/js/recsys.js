function appendMovie2Row(rowId, movieName, movieId, year, rating, rateNumber, genres, baseUrl) {

    var genresStr = "";
    $.each(genres, function (i, genre) {
        genresStr += ('<div class="genre"><a href="' + baseUrl + 'collection.html?type=genre&value=' + genre + '"><b>' + genre + '</b></a></div>');
    });


    var divstr = '<div class="movie-row-item" style="margin-right:5px">\
                    <movie-card-smart>\
                     <movie-card-md1>\
                      <div class="movie-card-md1">\
                       <div class="card">\
                        <link-or-emit>\
                         <a uisref="base.movie" href="./movie.html?movieId='+ movieId + '">\
                         <span>\
                           <div class="poster">\
                            <img src="./posters/' + movieId + '.jpg" />\
                           </div>\
                           </span>\
                           </a>\
                        </link-or-emit>\
                        <div class="overlay">\
                         <div class="above-fold">\
                          <link-or-emit>\
                           <a uisref="base.movie" href="./movie.html?movieId='+ movieId + '">\
                           <span><p class="title">' + movieName + '</p></span></a>\
                          </link-or-emit>\
                          <div class="rating-indicator">\
                           <ml4-rating-or-prediction>\
                            <div class="rating-or-prediction predicted">\
                             <svg xmlns:xlink="http://www.w3.org/1999/xlink" class="star-icon" height="14px" version="1.1" viewbox="0 0 14 14" width="14px" xmlns="http://www.w3.org/2000/svg">\
                              <defs></defs>\
                              <polygon fill-rule="evenodd" points="13.7714286 5.4939887 9.22142857 4.89188383 7.27142857 0.790044361 5.32142857 4.89188383 0.771428571 5.4939887 4.11428571 8.56096041 3.25071429 13.0202996 7.27142857 10.8282616 11.2921429 13.0202996 10.4285714 8.56096041" stroke="none"></polygon>\
                             </svg>\
                             <div class="rating-value">\
                              '+ rating + '\
                             </div>\
                            </div>\
                           </ml4-rating-or-prediction>\
                          </div>\
                          <p class="year">'+ year + '</p>\
                         </div>\
                         <div class="below-fold">\
                          <div class="genre-list">\
                           '+ genresStr + '\
                          </div>\
                          <div class="ratings-display">\
                           <div class="rating-average">\
                            <span class="rating-large">'+ rating + '</span>\
                            <span class="rating-total">/5</span>\
                            <p class="rating-caption"> '+ rateNumber + ' ratings </p>\
                           </div>\
                          </div>\
                         </div>\
                        </div>\
                       </div>\
                      </div>\
                     </movie-card-md1>\
                    </movie-card-smart>\
                   </div>';
    $('#' + rowId).append(divstr);
};

function appendPerson2Row(rowId, personName, personId, jobTitle, rating, rateNumber, birthDate, baseUrl, isactor) {
    var jobTitleStr = "";
    $.each(jobTitle, function (i, job) {
        jobTitleStr += ('<div class="genre"><a href="' + baseUrl + 'collection.html?type=jobTitle&value=' + job + '"><b>' + job + '</b></a></div>');
    });


    var divstr = `
        <div class="movie-row-item" style="margin-right:5px">
            <movie-card-smart>
                <movie-card-md1>
                    <div class="movie-card-md1">
                        <div class="card">
                            <link-or-emit>
                                <a uisref="base.movie" href="./${isactor ? 'actor' : 'director'}.html?${isactor ? 'actor' : 'director'}Id=${personId}">
                                    <span>
                                        <div class="poster">
                                            <img src="./${isactor ? 'actors' : 'directors'}/${personId}.jpg" />
                                        </div>
                                    </span>
                                </a>
                            </link-or-emit>
                            <div class="overlay">
                                <div class="above-fold">
                                    <link-or-emit>
                                        <a uisref="base.movie" href="./${isactor ? 'actor' : 'director'}.html?${isactor ? 'actor' : 'director'}Id=${personId}">
                                            <span><p class="title">${personName}</p></span>
                                        </a>
                                    </link-or-emit>
                                    <div class="rating-indicator">
                                        <ml4-rating-or-prediction>
                                            <div class="rating-or-prediction predicted">
                                                <svg xmlns:xlink="http://www.w3.org/1999/xlink" class="star-icon" height="14px" version="1.1" viewbox="0 0 14 14" width="14px" xmlns="http://www.w3.org/2000/svg">
                                                    <defs></defs>
                                                    <polygon fill-rule="evenodd" points="13.7714286 5.4939887 9.22142857 4.89188383 7.27142857 0.790044361 5.32142857 4.89188383 0.771428571 5.4939887 4.11428571 8.56096041 3.25071429 13.0202996 7.27142857 10.8282616 11.2921429 13.0202996 10.4285714 8.56096041" stroke="none"></polygon>
                                                </svg>
                                                <div class="rating-value">
                                                    ${rating}
                                                </div>
                                            </div>
                                        </ml4-rating-or-prediction>
                                    </div>
                                    <p class="year">${birthDate}</p>
                                </div>
                                <div class="below-fold">
                                    <div class="genre-list">
                                        ${jobTitleStr}
                                    </div>
                                    <div class="ratings-display">
                                        <div class="rating-average">
                                            <span class="rating-large">${rating}</span>
                                            <span class="rating-total">/5</span>
                                            <p class="rating-caption"> ${rateNumber} ratings </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </movie-card-md1>
            </movie-card-smart>
        </div>`;
    $('#' + rowId).append(divstr);
};

function addRowFrame(pageId, rowName, rowId, baseUrl) {
    var divstr = '<div class="frontpage-section-top"> \
                <div class="explore-header frontpage-section-header">\
                 <a class="plainlink" title="go to the full list" href="'+ baseUrl + 'collection.html?type=genre&value=' + rowName + '">' + rowName + '</a> \
                </div>\
                <div class="movie-row">\
                 <div class="movie-row-bounds">\
                  <div class="movie-row-scrollable" id="' + rowId + '" style="margin-left: 0px;">\
                  </div>\
                 </div>\
                 <div class="clearfix"></div>\
                </div>\
               </div>'
    $(pageId).prepend(divstr);
};

function addRowFrameWithoutLink(pageId, rowName, rowId, baseUrl) {
    var divstr = '<div class="frontpage-section-top"> \
                <div class="explore-header frontpage-section-header">\
                 <a class="plainlink" title="go to the full list" href="'+ baseUrl + 'collection.html?type=genre&value=' + rowName + '">' + rowName + '</a> \
                </div>\
                <div class="movie-row">\
                 <div class="movie-row-bounds">\
                  <div class="movie-row-scrollable" id="' + rowId + '" style="margin-left: 0px;">\
                  </div>\
                 </div>\
                 <div class="clearfix"></div>\
                </div>\
               </div>'
    $(pageId).prepend(divstr);
};

function addGenreRow(pageId, rowName, rowId, size, baseUrl) {
    addRowFrame(pageId, rowName, rowId, baseUrl);
    $.getJSON(baseUrl + "getrecommendation?genre=" + rowName + "&size=" + size + "&sortby=rating", function (result) {
        $.each(result, function (i, movie) {
            appendMovie2Row(rowId, movie.title, movie.movieId, movie.releaseYear, movie.averageRating.toPrecision(2), movie.ratingNumber, movie.genres, baseUrl);
        });
    });
};

function addJobTitleRow(pageId, rowName, rowId, size, baseUrl) {
    addRowFrame(pageId, rowName, rowId, baseUrl);
    $.getJSON(baseUrl + "getactorrecommendation?jobtitle=" + rowName + "&size=" + size + "&sortby=rating", function (resultActor) {
        $.getJSON(baseUrl + "getdirectorrecommendation?jobtitle=" + rowName + "&size=" + size + "&sortby=rating", function (resultDirector) {
            var resultMerge = resultActor.concat(resultDirector);
            resultMerge.sort(function (a, b) {
                return b.averageRating - a.averageRating;
            });
            $.each(resultMerge, function (i, person) {
                if (person.actorId != undefined) {
                    appendPerson2Row(rowId, person.name, person.actorId, person.jobTitle, person.averageRating.toPrecision(2), person.ratingNumber, person.birthDate, baseUrl, person.actorId != null);
                } else {
                    appendPerson2Row(rowId, person.name, person.directorId, person.jobTitle, person.averageRating.toPrecision(2), person.ratingNumber, person.birthDate, baseUrl, person.actorId != null);
                }
            });
        });
    });
};




function addRelatedMovies(pageId, containerId, movieId, baseUrl) {

    var rowDiv = '<div class="frontpage-section-top"> \
                <div class="explore-header frontpage-section-header">\
                 Related Movies \
                </div>\
                <div class="movie-row">\
                 <div class="movie-row-bounds">\
                  <div class="movie-row-scrollable" id="' + containerId + '" style="margin-left: 0px;">\
                  </div>\
                 </div>\
                 <div class="clearfix"></div>\
                </div>\
               </div>'
    $(pageId).prepend(rowDiv);

    $.getJSON(baseUrl + "getsimilarmovie?movieId=" + movieId + "&size=16&model=emb", function (result) {
        $.each(result, function (i, movie) {
            appendMovie2Row(containerId, movie.title, movie.movieId, movie.releaseYear, movie.averageRating.toPrecision(2), movie.ratingNumber, movie.genres, baseUrl);
        });
    });
}

function addUserHistory(pageId, containerId, userId, baseUrl) {

    var rowDiv = '<div class="frontpage-section-top"> \
                <div class="explore-header frontpage-section-header">\
                 User Watched Movies \
                </div>\
                <div class="movie-row">\
                 <div class="movie-row-bounds">\
                  <div class="movie-row-scrollable" id="' + containerId + '" style="margin-left: 0px;">\
                  </div>\
                 </div>\
                 <div class="clearfix"></div>\
                </div>\
               </div>'
    $(pageId).prepend(rowDiv);

    $.getJSON(baseUrl + "getuser?id=" + userId, function (userObject) {
        $.each(userObject.ratings, function (i, rating) {
            $.getJSON(baseUrl + "getmovie?id=" + rating.rating.movieId, function (movieObject) {
                appendMovie2Row(containerId, movieObject.title, movieObject.movieId, movieObject.releaseYear, rating.rating.score, movieObject.ratingNumber, movieObject.genres, baseUrl);
            });
        });
    });
}

function addRecForYou(pageId, containerId, userId, model, baseUrl) {

    var rowDiv = '<div class="frontpage-section-top"> \
                <div class="explore-header frontpage-section-header">\
                 Recommended For You \
                </div>\
                <div class="movie-row">\
                 <div class="movie-row-bounds">\
                  <div class="movie-row-scrollable" id="' + containerId + '" style="margin-left: 0px;">\
                  </div>\
                 </div>\
                 <div class="clearfix"></div>\
                </div>\
               </div>'
    $(pageId).prepend(rowDiv);

    $.getJSON(baseUrl + "getrecforyou?id=" + userId + "&size=32&model=" + model, function (result) {
        $.each(result, function (i, movie) {
            appendMovie2Row(containerId, movie.title, movie.movieId, movie.releaseYear, movie.averageRating.toPrecision(2), movie.ratingNumber, movie.genres, baseUrl);
        });
    });
}


function addMovieDetails(containerId, movieId, baseUrl) {

    $.getJSON(baseUrl + "getmovie?id=" + movieId, function (movieObject) {
        var genres = "";
        $.each(movieObject.genres, function (i, genre) {
            genres += ('<span><a href="' + baseUrl + 'collection.html?type=genre&value=' + genre + '"><b>' + genre + '</b></a>');
            if (i < movieObject.genres.length - 1) {
                genres += ", </span>";
            } else {
                genres += "</span>";
            }
        });

        var ratingUsers = "";
        $.each(movieObject.topRatings, function (i, rating) {
            ratingUsers += ('<span><a href="' + baseUrl + 'user.html?id=' + rating.rating.userId + '"><b>User' + rating.rating.userId + '</b></a>');
            if (i < movieObject.topRatings.length - 1) {
                ratingUsers += ", </span>";
            } else {
                ratingUsers += "</span>";
            }
        });

        var movieDetails = '<div class="row movie-details-header movie-details-block">\
                                        <div class="col-md-2 header-backdrop">\
                                            <img alt="movie backdrop image" height="250" src="./posters/'+ movieObject.movieId + '.jpg">\
                                        </div>\
                                        <div class="col-md-9"><h1 class="movie-title"> '+ movieObject.title + ' </h1>\
                                            <div class="row movie-highlights">\
                                                <div class="col-md-2">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Release Year</div>\
                                                        <div> '+ movieObject.releaseYear + ' </div>\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Links</div>\
                                                        <a target="_blank" href="http://www.imdb.com/title/tt'+ movieObject.imdbId + '">imdb</a>,\
                                                        <span><a target="_blank" href="http://www.themoviedb.org/movie/'+ movieObject.tmdbId + '">tmdb</a></span>\
                                                    </div>\
                                                </div>\
                                                <div class="col-md-3">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> MovieLens predicts for you</div>\
                                                        <div> 5.0 stars</div>\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> Average of '+ movieObject.ratingNumber + ' ratings</div>\
                                                        <div> '+ movieObject.averageRating.toPrecision(2) + ' stars\
                                                        </div>\
                                                    </div>\
                                                </div>\
                                                <div class="col-md-6">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Genres</div>\
                                                        '+ genres + '\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Who likes the movie most</div>\
                                                        '+ ratingUsers + '\
                                                    </div>\
                                                </div>\
                                            </div>\
                                        </div>\
                                    </div>'
        $("#" + containerId).prepend(movieDetails);
    });
};

function addUserDetails(containerId, userId, baseUrl) {

    $.getJSON(baseUrl + "getuser?id=" + userId, function (userObject) {
        var userDetails = '<div class="row movie-details-header movie-details-block">\
                                        <div class="col-md-2 header-backdrop">\
                                            <img alt="movie backdrop image" height="200" src="./images/avatar/'+ userObject.userId % 10 + '.png">\
                                        </div>\
                                        <div class="col-md-9"><h1 class="movie-title"> User'+ userObject.userId + ' </h1>\
                                            <div class="row movie-highlights">\
                                                <div class="col-md-2">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">#Watched Movies</div>\
                                                        <div> '+ userObject.ratingCount + ' </div>\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> Average Rating Score</div>\
                                                        <div> '+ userObject.averageRating.toPrecision(2) + ' stars\
                                                        </div>\
                                                    </div>\
                                                </div>\
                                                <div class="col-md-3">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> Highest Rating Score</div>\
                                                        <div> '+ userObject.highestRating + ' stars</div>\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> Lowest Rating Score</div>\
                                                        <div> '+ userObject.lowestRating + ' stars\
                                                        </div>\
                                                    </div>\
                                                </div>\
                                                <div class="col-md-6">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Favourite Genres</div>\
                                                        '+ 'action' + '\
                                                    </div>\
                                                </div>\
                                            </div>\
                                        </div>\
                                    </div>'
        $("#" + containerId).prepend(userDetails);
    });
};

function addActorDetails(containerId, actorId, baseUrl) {

    $.getJSON(baseUrl + "getactor?id=" + actorId, function (actorObject) {

        var jobTitle = "";
        $.each(actorObject.jobTitle, function (i, genre) {
            jobTitle += ('<span><a href="' + baseUrl + 'collection.html?type=jobTitle&value=' + genre + '"><b>' + genre + '</b></a>');
            if (i < actorObject.jobTitle.length - 1) {
                jobTitle += ", </span>";
            } else {
                jobTitle += "</span>";
            }
        });

        var ratingUsers = "";
        $.each(actorObject.topRatings, function (i, rating) {
            ratingUsers += ('<span><a href="' + baseUrl + 'user.html?id=' + rating.rating.userId + '"><b>User' + rating.rating.userId + '</b></a>');
            if (i < actorObject.topRatings.length - 1) {
                ratingUsers += ", </span>";
            } else {
                ratingUsers += "</span>";
            }
        });
        var actorDetails = '<div class="row movie-details-header movie-details-block">\
                                        <div class="col-md-2 header-backdrop">\
                                            <img alt="movie backdrop image" height="250" src="./actors/'+ actorObject.actorId + '.jpg">\
                                        </div>\
                                        <div class="col-md-9"><h1 class="movie-title"> '+ actorObject.name + ' </h1>\
                                            <div class="row movie-highlights">\
                                                <div class="col-md-2">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Birth Date</div>\
                                                        <div> '+ actorObject.birthDate + ' </div>\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Links</div>\
                                                        <a target="_blank" href="http://www.imdb.com/title/tt'+ actorObject.imdbId + '">imdb</a>\
                                                    </div>\
                                                </div>\
                                                <div class="col-md-3">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> MovieLens predicts for you</div>\
                                                        <div> 5.0 stars</div>\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> Average of '+ actorObject.ratingNumber + ' ratings</div>\
                                                        <div> '+ actorObject.averageRating.toPrecision(2) + ' stars\
                                                        </div>\
                                                    </div>\
                                                </div>\
                                                <div class="col-md-6">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Job Title</div>\
                                                        '+ jobTitle + '\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Who likes the actor most</div>\
                                                        '+ ratingUsers + '\
                                                    </div>\
                                                </div>\
                                            </div>\
                                        </div>\
                                    </div>'
        $("#" + containerId).prepend(actorDetails);
    });
};

function addActorMovies(pageId, containerId, actorId, baseUrl) {

    $.getJSON(baseUrl + "getactor?id=" + actorId, function (actorObject) {

        var rowDiv = '<div class="frontpage-section-top"> \
                <div class="explore-header frontpage-section-header">\
                 Movies \
                </div>\
                <div class="movie-row">\
                 <div class="movie-row-bounds">\
                  <div class="movie-row-scrollable" id="' + containerId + '" style="margin-left: 0px;">\
                  </div>\
                 </div>\
                 <div class="clearfix"></div>\
                </div>\
               </div>'
        $(pageId).prepend(rowDiv);
        var moviesId = actorObject.movies;
        for (var i = 0; i < moviesId.length; i++) {
            $.getJSON(baseUrl + "getmovie?id=" + moviesId[i], function (movieObject) {
                appendMovie2Row(containerId, movieObject.title, movieObject.movieId, movieObject.releaseYear, movieObject.averageRating.toPrecision(2), movieObject.ratingNumber, movieObject.genres, baseUrl);
            });
        }

    });
};

function addRelatedActors(pageId, containerId, actorId, baseUrl) {
    $.getJSON(baseUrl + "getsimilaractor?model=emb&size=10&actorId=" + actorId, function (actorObjectArray) {
        var rowDiv = `
            <div class="frontpage-section-top">
                <div class="explore-header frontpage-section-header">
                    Related Actors
                </div>
                <div class="movie-row">
                    <div class="movie-row-bounds">
                        <div class="movie-row-scrollable" id="${containerId}" style="margin-left: 0px;">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>`;
        $(pageId).prepend(rowDiv);

        for (var i = 0; i < actorObjectArray.length; i++) {
            appendPerson2Row(containerId, actorObjectArray[i].name, actorObjectArray[i].actorId, actorObjectArray[i].jobTitle, actorObjectArray[i].averageRating.toPrecision(2), actorObjectArray[i].ratingNumber, actorObjectArray[i].birthDate, baseUrl, true);
        }
    });
}

function addMovieActors(pageId, containerId, movieId, baseUrl) {
    $.getJSON(baseUrl + "getmovie?id=" + movieId, function (movieObject) {
        var rowDiv = `
            <div class="frontpage-section-top">
                <div class="explore-header frontpage-section-header">
                   Main Actors
                </div>
                <div class="movie-row">
                    <div class="movie-row-bounds">
                        <div class="movie-row-scrollable" id="${containerId}" style="margin-left: 0px;">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>`;
        $(pageId).prepend(rowDiv);

        for (var i = 0; i < movieObject.actors.length; i++) {
            $.getJSON(baseUrl + "getactor?id=" + movieObject.actors[i], function (actorObject) {
                appendPerson2Row(containerId, actorObject.name, actorObject.actorId, actorObject.jobTitle, actorObject.averageRating.toPrecision(2), actorObject.ratingNumber, actorObject.birthDate, baseUrl, true);
            });
        }
    });
}

function addMovieDirectors(pageId, containerId, movieId, baseUrl) {
    $.getJSON(baseUrl + "getmovie?id=" + movieId, function (movieObject) {
        var rowDiv = `
            <div class="frontpage-section-top">
                <div class="explore-header frontpage-section-header">
                   Main Directors
                </div>
                <div class="movie-row">
                    <div class="movie-row-bounds">
                        <div class="movie-row-scrollable" id="${containerId}" style="margin-left: 0px;">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>`;
        $(pageId).prepend(rowDiv);

        for (var i = 0; i < movieObject.directors.length; i++) {
            $.getJSON(baseUrl + "getdirector?id=" + movieObject.directors[i], function (directorObject) {
                appendPerson2Row(containerId, directorObject.name, directorObject.directorId, directorObject.jobTitle, directorObject.averageRating.toPrecision(2), directorObject.ratingNumber, directorObject.birthDate, baseUrl, false);
            });
        }
    });
}

function addDirectorDetails(containerId, directorId, baseUrl) {
    $.getJSON(baseUrl + "getdirector?id=" + directorId, function (directorObject) {
        var jobTitle = "";
        $.each(directorObject.jobTitle, function (i, genre) {
            jobTitle += ('<span><a href="' + baseUrl + 'collection.html?type=jobTitle&value=' + genre + '"><b>' + genre + '</b></a>');
            if (i < directorObject.jobTitle.length - 1) {
                jobTitle += ", </span>";
            } else {
                jobTitle += "</span>";
            }
        });

        var ratingUsers = "";
        $.each(directorObject.topRatings, function (i, rating) {
            ratingUsers += ('<span><a href="' + baseUrl + 'user.html?id=' + rating.rating.userId + '"><b>User' + rating.rating.userId + '</b></a>');
            if (i < directorObject.topRatings.length - 1) {
                ratingUsers += ", </span>";
            } else {
                ratingUsers += "</span>";
            }
        });

        var directorDetails = '<div class="row movie-details-header movie-details-block">\
                                        <div class="col-md-2 header-backdrop">\
                                            <img alt="movie backdrop image" height="250" src="./directors/'+ directorObject.directorId + '.jpg">\
                                        </div>\
                                        <div class="col-md-9"><h1 class="movie-title"> '+ directorObject.name + ' </h1>\
                                            <div class="row movie-highlights">\
                                                <div class="col-md-2">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Birth Date</div>\
                                                        <div> '+ directorObject.birthDate + ' </div>\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Links</div>\
                                                        <a target="_blank" href="http://www.imdb.com/title/tt'+ directorObject.imdbId + '">imdb</a>\
                                                    </div>\
                                                </div>\
                                                <div class="col-md-3">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> MovieLens predicts for you</div>\
                                                        <div> 5.0 stars</div>\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading"> Average of '+ directorObject.ratingNumber + ' ratings</div>\
                                                        <div> '+ directorObject.averageRating.toPrecision(2) + ' stars\
                                                        </div>\
                                                    </div>\
                                                </div>\
                                                <div class="col-md-6">\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Job Title</div>\
                                                        '+ jobTitle + '\
                                                    </div>\
                                                    <div class="heading-and-data">\
                                                        <div class="movie-details-heading">Who likes the director most</div>\
                                                        '+ ratingUsers + '\
                                                    </div>\
                                                </div>\
                                            </div>\
                                        </div>\
                                    </div>'
        $("#" + containerId).prepend(directorDetails);
    });
};

function addDirectorMovies(pageId, containerId, directorId, baseUrl) {
    $.getJSON(baseUrl + "getdirector?id=" + directorId, function (directorObject) {
        var rowDiv = '<div class="frontpage-section-top"> \
                <div class="explore-header frontpage-section-header">\
                 Movies \
                </div>\
                <div class="movie-row">\
                 <div class="movie-row-bounds">\
                  <div class="movie-row-scrollable" id="' + containerId + '" style="margin-left: 0px;">\
                  </div>\
                 </div>\
                 <div class="clearfix"></div>\
                </div>\
               </div>'
        $(pageId).prepend(rowDiv);
        var moviesId = directorObject.movies;
        for (var i = 0; i < moviesId.length; i++) {
            $.getJSON(baseUrl + "getmovie?id=" + moviesId[i], function (movieObject) {
                appendMovie2Row(containerId, movieObject.title, movieObject.movieId, movieObject.releaseYear, movieObject.averageRating.toPrecision(2), movieObject.ratingNumber, movieObject.genres, baseUrl);
            });
        }
    });
};

function addRelatedDirectors(pageId, containerId, directorId, baseUrl) {
    $.getJSON(baseUrl + "getsimilardirector?model=emb&size=10&directorId=" + directorId, function (directorObjectArray) {
        var rowDiv = `
            <div class="frontpage-section-top">
                <div class="explore-header frontpage-section-header">
                    Related Directors
                </div>
                <div class="movie-row">
                    <div class="movie-row-bounds">
                        <div class="movie-row-scrollable" id="${containerId}" style="margin-left: 0px;">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>`;
        $(pageId).prepend(rowDiv);

        for (var i = 0; i < directorObjectArray.length; i++) {
            appendPerson2Row(containerId, directorObjectArray[i].name, directorObjectArray[i].directorId, directorObjectArray[i].jobTitle, directorObjectArray[i].averageRating.toPrecision(2), directorObjectArray[i].ratingNumber, directorObjectArray[i].birthDate, baseUrl, false);
        }
    });
}

function addActorRec(pageId, containerId, actorId, baseUrl) {
    $.getJSON(baseUrl + "getrecforyouactor?model=neuralcf&size=5&id=" + actorId, function (actorObjectArray) {
        var rowDiv = `
            <div class="frontpage-section-top">
                <div class="explore-header frontpage-section-header">
                    Recommended Actors
                </div>
                <div class="movie-row">
                    <div class="movie-row-bounds">
                        <div class="movie-row-scrollable" id="${containerId}" style="margin-left: 0px;">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>`;
        $(pageId).prepend(rowDiv);

        $.each(actorObjectArray, function (i, actorObject) {
            appendPerson2Row(containerId, actorObject.name, actorObject.actorId, actorObject.jobTitle, actorObject.averageRating.toPrecision(2), actorObject.ratingNumber, actorObject.birthDate, baseUrl, true);
        });
    });
}

function addDirectorRec(pageId, containerId, directorId, baseUrl) {
    $.getJSON(baseUrl + "getrecforyoudirector?model=neuralcf&size=5&id=" + directorId, function (directorObjectArray) {
        var rowDiv = `
            <div class="frontpage-section-top">
                <div class="explore-header frontpage-section-header">
                    Recommended Directors
                </div>
                <div class="movie-row">
                    <div class="movie-row-bounds">
                        <div class="movie-row-scrollable" id="${containerId}" style="margin-left: 0px;">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>`;
        $(pageId).prepend(rowDiv);

        $.each(directorObjectArray, function (i, directorObject) {
            appendPerson2Row(containerId, directorObject.name, directorObject.directorId, directorObject.jobTitle, directorObject.averageRating.toPrecision(2), directorObject.ratingNumber, directorObject.birthDate, baseUrl, false);
        });
    });
}
