.class public interface abstract Lcom/android/camera/one/v2/imagemanagement/frame/Frame;
.super Ljava/lang/Object;
.source "Frame.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getImageCount()I
.end method

.method public abstract getImages()Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLockObject()Ljava/lang/Object;
.end method

.method public abstract getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract removeNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
.end method
