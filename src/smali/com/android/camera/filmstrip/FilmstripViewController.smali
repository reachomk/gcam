.class public interface abstract Lcom/android/camera/filmstrip/FilmstripViewController;
.super Ljava/lang/Object;
.source "FilmstripViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;
    }
.end annotation


# virtual methods
.method public abstract getCurrentAdapterIndex()I
.end method

.method public abstract goToFirstItem()V
.end method

.method public abstract goToFullScreen()V
.end method

.method public abstract goToItemAtIndex(I)Z
.end method

.method public abstract goToNextItem()Z
.end method

.method public abstract goToPreviousItem()Z
.end method

.method public abstract isVisible(Lcom/android/camera/data/FilmstripItem;)Z
.end method

.method public abstract setDataAdapter(Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V
.end method

.method public abstract setImageGap(I)V
.end method

.method public abstract setListener(Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;)V
.end method
