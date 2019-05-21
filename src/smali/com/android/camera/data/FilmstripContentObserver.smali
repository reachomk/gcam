.class public final Lcom/android/camera/data/FilmstripContentObserver;
.super Landroid/database/ContentObserver;
.source "FilmstripContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;
    }
.end annotation


# instance fields
.field private activityPaused:Z

.field private changeListener:Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;

.field private mediaDataChangedDuringPause:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 17
    iput-boolean v1, p0, Lcom/android/camera/data/FilmstripContentObserver;->activityPaused:Z

    .line 18
    iput-boolean v1, p0, Lcom/android/camera/data/FilmstripContentObserver;->mediaDataChangedDuringPause:Z

    .line 22
    return-void
.end method


# virtual methods
.method public final isMediaDataChangedDuringPause()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/camera/data/FilmstripContentObserver;->mediaDataChangedDuringPause:Z

    return v0
.end method

.method public final onChange(Z)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/data/FilmstripContentObserver;->changeListener:Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/camera/data/FilmstripContentObserver;->changeListener:Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;->onChange()V

    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/data/FilmstripContentObserver;->activityPaused:Z

    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/data/FilmstripContentObserver;->mediaDataChangedDuringPause:Z

    .line 44
    :cond_1
    return-void
.end method

.method public final setActivityPaused(Z)V
    .locals 1

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/camera/data/FilmstripContentObserver;->activityPaused:Z

    .line 48
    if-nez p1, :cond_0

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/FilmstripContentObserver;->mediaDataChangedDuringPause:Z

    .line 51
    :cond_0
    return-void
.end method

.method public final setForegroundChangeListener(Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/camera/data/FilmstripContentObserver;->changeListener:Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;

    .line 26
    return-void
.end method
