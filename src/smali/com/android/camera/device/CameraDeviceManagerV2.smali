.class public interface abstract Lcom/android/camera/device/CameraDeviceManagerV2;
.super Ljava/lang/Object;
.source "CameraDeviceManagerV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;
    }
.end annotation


# virtual methods
.method public abstract disconnectAsync()V
.end method

.method public abstract disconnectSync()V
.end method

.method public abstract open(Lcom/google/android/apps/camera/device/CameraId;)V
.end method

.method public abstract open(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V
.end method
