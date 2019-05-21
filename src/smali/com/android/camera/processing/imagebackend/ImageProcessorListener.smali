.class public interface abstract Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
.super Ljava/lang/Object;
.source "ImageProcessorListener.java"


# virtual methods
.method public abstract onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V
.end method

.method public abstract onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V
.end method

.method public abstract onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V
.end method

.method public abstract onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V
.end method
