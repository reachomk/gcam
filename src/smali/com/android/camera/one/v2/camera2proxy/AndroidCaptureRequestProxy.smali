.class public final Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;
.super Ljava/lang/Object;
.source "AndroidCaptureRequestProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;


# instance fields
.field private final request:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;->request:Landroid/hardware/camera2/CaptureRequest;

    .line 21
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;->request:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;->request:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;->request:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureRequestProxy;->request:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v0

    return v0
.end method
