.class final Lcom/android/camera/device/CameraDeviceManagerV2Impl$1;
.super Ljava/lang/Object;
.source "CameraDeviceManagerV2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/device/CameraDeviceManagerV2Impl;->invokeDisconnectAsync(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$listener:Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;


# direct methods
.method constructor <init>(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$1;->val$listener:Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$1;->val$listener:Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;

    invoke-interface {v0}, Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;->onDisconnected()V

    .line 239
    return-void
.end method
