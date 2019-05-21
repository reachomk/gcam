.class public interface abstract Lcom/android/camera/filmstrip/FilmstripDataAdapter;
.super Ljava/lang/Object;
.source "FilmstripDataAdapter.java"

# interfaces
.implements Lcom/android/camera/widget/Preloader$ItemLoader;
.implements Lcom/android/camera/widget/Preloader$ItemSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;,
        Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/widget/Preloader$ItemLoader;",
        "Lcom/android/camera/widget/Preloader$ItemSource;"
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V
.end method

.method public abstract addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z
.end method

.method public abstract clear()V
.end method

.method public abstract executeDeletion()Z
.end method

.method public abstract findByContentUri(Landroid/net/Uri;)I
.end method

.method public abstract getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;
.end method

.method public abstract getItemAt(I)Lcom/android/camera/data/FilmstripItem;
.end method

.method public abstract getItemViewType(I)I
.end method

.method public abstract getTotalNumber()I
.end method

.method public abstract getView$51662RJ4E9NMIP1FEPKMATPFAPKMATPR95666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94APKM8PBF8DM6IORBCLI46OBCDHH62ORB7CKKOOBECHP6UQB45TR6IPBN5TB6IPBN7C______(Landroid/view/View;ILcom/android/camera/one/v2/lifecycle/StartTasks;)Landroid/view/View;
.end method

.method public abstract isMetadataUpdatedAt(I)Z
.end method

.method public abstract refresh(Landroid/net/Uri;)V
.end method

.method public abstract removeAt(I)V
.end method

.method public abstract requestLoad(Lcom/google/android/apps/camera/util/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestLoadNewPhotos()V
.end method

.method public abstract requestRemoveDeleted()V
.end method

.method public abstract setLocalDataListener(Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;)V
.end method

.method public abstract suggestViewSizeBound(II)V
.end method

.method public abstract undoDeletion()Z
.end method

.method public abstract updateItemAt(ILcom/android/camera/data/FilmstripItem;)V
.end method

.method public abstract updateMetadataAt(I)Landroid/os/AsyncTask;
.end method
