.class final Lcom/android/camera/one/v2/OneCameraSelector$1;
.super Ljava/lang/Object;
.source "OneCameraSelector.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/OneCameraSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$cameraDeviceInstrumentationSession:Lcom/android/camera/stats/CameraDeviceInstrumentationSession;


# direct methods
.method constructor <init>(Lcom/android/camera/stats/CameraDeviceInstrumentationSession;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraSelector$1;->val$cameraDeviceInstrumentationSession:Lcom/android/camera/stats/CameraDeviceInstrumentationSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 365
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    .line 1369
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    new-instance v0, Lcom/android/camera/one/v2/stats/ProfilingCameraDevice;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraSelector$1;->val$cameraDeviceInstrumentationSession:Lcom/android/camera/stats/CameraDeviceInstrumentationSession;

    invoke-direct {v0, p1, v1}, Lcom/android/camera/one/v2/stats/ProfilingCameraDevice;-><init>(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;Lcom/android/camera/stats/CameraDeviceInstrumentationSession;)V

    .line 365
    return-object v0
.end method
