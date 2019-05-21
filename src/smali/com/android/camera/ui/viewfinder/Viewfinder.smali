.class public interface abstract Lcom/android/camera/ui/viewfinder/Viewfinder;
.super Ljava/lang/Object;
.source "Viewfinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/viewfinder/Viewfinder$SurfaceDestroyedListener;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getViewfinderSurface()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setSurfaceDestroyedListener(Lcom/android/camera/ui/viewfinder/Viewfinder$SurfaceDestroyedListener;)V
.end method

.method public abstract swapAndStartSurfaceViewViewfinder(Lcom/android/camera/ui/viewfinder/ViewfinderConfig;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/viewfinder/ViewfinderConfig;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end method
