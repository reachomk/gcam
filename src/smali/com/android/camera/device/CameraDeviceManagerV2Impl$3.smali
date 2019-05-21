.class final Lcom/android/camera/device/CameraDeviceManagerV2Impl$3;
.super Ljava/lang/Object;
.source "CameraDeviceManagerV2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/device/CameraDeviceManagerV2Impl;->closeAsyncAndMaybeOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/device/CameraDeviceManagerV2Impl;


# direct methods
.method constructor <init>(Lcom/android/camera/device/CameraDeviceManagerV2Impl;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$3;->this$0:Lcom/android/camera/device/CameraDeviceManagerV2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$3;->this$0:Lcom/android/camera/device/CameraDeviceManagerV2Impl;

    invoke-static {v0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->access$300(Lcom/android/camera/device/CameraDeviceManagerV2Impl;)V

    .line 294
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceManagerV2Impl$3;->this$0:Lcom/android/camera/device/CameraDeviceManagerV2Impl;

    invoke-static {v0}, Lcom/android/camera/device/CameraDeviceManagerV2Impl;->access$400(Lcom/android/camera/device/CameraDeviceManagerV2Impl;)V

    .line 295
    return-void
.end method
