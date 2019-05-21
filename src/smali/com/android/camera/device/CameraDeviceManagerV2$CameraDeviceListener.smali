.class public interface abstract Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;
.super Ljava/lang/Object;
.source "CameraDeviceManagerV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/CameraDeviceManagerV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraDeviceListener"
.end annotation


# virtual methods
.method public abstract onClosed()V
.end method

.method public abstract onDisconnected()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onOpened(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V
.end method
