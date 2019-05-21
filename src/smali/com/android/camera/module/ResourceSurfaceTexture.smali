.class public interface abstract Lcom/android/camera/module/ResourceSurfaceTexture;
.super Ljava/lang/Object;
.source "ResourceSurfaceTexture.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# virtual methods
.method public abstract createPreviewSurface()Lcom/google/common/util/concurrent/ListenableFuture;
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

.method public abstract getPreviewSize()Lcom/android/camera/util/Size;
.end method

.method public abstract setPreviewLayoutSize(Lcom/android/camera/util/Size;)V
.end method

.method public abstract setPreviewSize(Lcom/android/camera/util/Size;)V
.end method
