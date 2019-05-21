.class public interface abstract Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;
.super Ljava/lang/Object;
.source "ImageReaderProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;,
        Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$Factory;
    }
.end annotation


# virtual methods
.method public abstract acquireLatestImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
.end method

.method public abstract acquireNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
.end method

.method public abstract close()V
.end method

.method public abstract discardFreeBuffers()V
.end method

.method public abstract getHeight()I
.end method

.method public abstract getImageFormat()I
.end method

.method public abstract getMaxImages()I
.end method

.method public abstract getSurface()Landroid/view/Surface;
.end method

.method public abstract getWidth()I
.end method

.method public abstract setOnImageAvailableListener(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V
.end method
