.class final Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera$1;
.super Ljava/lang/Object;
.source "GenericOneCamera.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to close the CameraDeviceProxy."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    .line 1109
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->close()V

    .line 106
    return-void
.end method
