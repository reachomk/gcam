.class public interface abstract Lcom/android/camera/filmstrip/FilmstripFragment;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"


# virtual methods
.method public abstract getBottomPanelController()Lcom/android/camera/filmstrip/FilmstripBottomPanelController;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getFilmstripAccessibilityController()Lcom/android/camera/filmstrip/FilmstripAccessibilityController;
.end method

.method public abstract getFilmstripBadgeController()Lcom/android/camera/filmstrip/FilmstripBadgeController;
.end method

.method public abstract getFilmstripContentPanel()Lcom/android/camera/filmstrip/FilmstripContentPanel;
.end method

.method public abstract getFilmstripController()Lcom/android/camera/filmstrip/FilmstripController;
.end method

.method public abstract getFilmstripViewController()Lcom/android/camera/filmstrip/FilmstripViewController;
.end method

.method public abstract getWindowManager()Landroid/view/WindowManager;
.end method

.method public abstract hideFilmstrip()V
.end method

.method public abstract initializeData()V
.end method

.method public abstract initializeUi$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIULB99TH76PBIEPGM4R357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TRMIP37CLQ2UHJ9DHMN6T3ID5O5CQB5ESI50R31F5B6IP35DT4MST35DPQ3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUP31EHGIUJ3FCDGMOHJ9DHMN6T3ID5O48OBKC50M8OBGEHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRND5I6EPBK5T96UTBECHIM8L38ELMM4RJ1D5M5CQB5ESTIILG_(Lcom/android/camera/app/AppController;Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/one/v2/lifecycle/StartTasks;Lcom/android/camera/filmstrip/FilmstripDataAdapter;Lcom/android/camera/widget/RoundedThumbnailView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/app/AppController;",
            "Lcom/google/android/apps/camera/async/UiObservable",
            "<",
            "Lcom/android/camera/util/layout/ActivityLayout;",
            ">;",
            "Lcom/android/camera/one/v2/lifecycle/StartTasks;",
            "Lcom/android/camera/filmstrip/FilmstripDataAdapter;",
            "Lcom/android/camera/widget/RoundedThumbnailView;",
            ")V"
        }
    .end annotation
.end method

.method public abstract isActivityFinishing()Z
.end method

.method public abstract isActivityPaused()Z
.end method

.method public abstract isFilmstripVisible()Z
.end method

.method public abstract showFilmstrip()V
.end method
