.class public Lcom/android/camera/one/v2/core/FrameServerModule;
.super Ljava/lang/Object;
.source "FrameServerModule.java"

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
    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCaptureRequestList(Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy;",
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
    .line 1018
    invoke-virtual {p1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static forFinalMetadata(Lcom/google/android/apps/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)",
            "Lcom/android/camera/one/v2/core/ResponseListener;"
        }
    .end annotation

    .prologue
    .line 2047
    new-instance v0, Lcom/android/camera/one/v2/core/ResponseListeners$1;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/one/v2/core/ResponseListeners$1;-><init>(Lcom/google/android/apps/camera/async/Updatable;Lcom/google/android/apps/camera/async/Updatable;)V

    return-object v0
.end method

.method public static forFrameExposure(Lcom/google/android/apps/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/android/camera/one/v2/core/ResponseListener;"
        }
    .end annotation

    .prologue
    .line 2093
    new-instance v0, Lcom/android/camera/one/v2/core/ResponseListeners$4;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/one/v2/core/ResponseListeners$4;-><init>(Lcom/google/android/apps/camera/async/Updatable;Lcom/google/android/apps/camera/async/Updatable;)V

    return-object v0
.end method

.method public static forImageIds(Lcom/google/android/apps/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/core/ImageId;",
            ">;)",
            "Lcom/android/camera/one/v2/core/ResponseListener;"
        }
    .end annotation

    .prologue
    .line 2103
    new-instance v0, Lcom/android/camera/one/v2/core/ResponseListeners$5;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/core/ResponseListeners$5;-><init>(Lcom/google/android/apps/camera/async/Updatable;)V

    return-object v0
.end method

.method public static forListeners(Ljava/util/Collection;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ">;)",
            "Lcom/android/camera/one/v2/core/ResponseListener;"
        }
    .end annotation

    .prologue
    .line 2123
    new-instance v0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs forListeners([Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1

    .prologue
    .line 2116
    new-instance v0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;-><init>([Lcom/android/camera/one/v2/core/ResponseListener;)V

    return-object v0
.end method

.method public static forPartialMetadata(Lcom/google/android/apps/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;",
            ">;)",
            "Lcom/android/camera/one/v2/core/ResponseListener;"
        }
    .end annotation

    .prologue
    .line 2061
    new-instance v0, Lcom/android/camera/one/v2/core/ResponseListeners$2;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/one/v2/core/ResponseListeners$2;-><init>(Lcom/google/android/apps/camera/async/Updatable;Lcom/google/android/apps/camera/async/Updatable;)V

    return-object v0
.end method

.method public static noop()Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 2

    .prologue
    .line 2127
    new-instance v0, Lcom/android/camera/one/v2/core/ResponseListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createCaptureRequestList(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 2010
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy;

    invoke-static {p1, p2}, Lcom/android/camera/one/v2/core/FrameServerModule;->createCaptureRequestList(Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
