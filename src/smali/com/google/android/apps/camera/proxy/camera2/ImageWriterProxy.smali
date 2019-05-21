.class public interface abstract Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;
.super Ljava/lang/Object;
.source "ImageWriterProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;,
        Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$Factory;
    }
.end annotation


# virtual methods
.method public abstract dequeueInputImage(J)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation
.end method

.method public abstract getMaxImages()I
.end method

.method public abstract queueInputImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation
.end method

.method public abstract setImageListener(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;Landroid/os/Handler;)V
.end method
