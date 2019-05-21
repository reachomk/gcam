.class public Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;
.super Ljava/lang/Object;
.source "CaptureFailureProxy.java"


# instance fields
.field private final captureFailure:Landroid/hardware/camera2/CaptureFailure;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .prologue
    .line 2012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2013
    iput-object p1, p0, Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;->captureFailure:Landroid/hardware/camera2/CaptureFailure;

    .line 2014
    return-void
.end method


# virtual methods
.method public getReason()I
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;->captureFailure:Landroid/hardware/camera2/CaptureFailure;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    return v0
.end method
