.class public final Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallbackFactory;
.super Ljava/lang/Object;
.source "AndroidCaptureSessionStateCallbackFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCaptureSessionStateCallback(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;)Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallback;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureSessionStateCallback;-><init>(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$StateCallback;)V

    return-object v0
.end method
