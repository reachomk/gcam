.class public final Lcom/android/camera/selfieflash/NoOpSelfieFlashController;
.super Ljava/lang/Object;
.source "NoOpSelfieFlashController.java"

# interfaces
.implements Lcom/android/camera/selfieflash/SelfieFlashController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public final onCameraChanged(Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 0

    .prologue
    .line 11
    return-void
.end method
