.class final Lcom/android/camera/device/CameraDeviceState$OnOpened;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"

# interfaces
.implements Lcom/android/camera/device/CameraDeviceState$StateTransition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/CameraDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnOpened"
.end annotation


# instance fields
.field private final cameraDevice:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceState$OnOpened;->cameraDevice:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    .line 263
    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceState$OnOpened;->cameraDevice:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    invoke-interface {p1, v0}, Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;->onOpened(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V

    .line 267
    return-void
.end method
