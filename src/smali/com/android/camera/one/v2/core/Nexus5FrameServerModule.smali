.class public Lcom/android/camera/one/v2/core/Nexus5FrameServerModule;
.super Ljava/lang/Object;
.source "Nexus5FrameServerModule.java"

# interfaces
.implements Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCaptureRequestList(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            "Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 1019
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/CaptureRequest;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
