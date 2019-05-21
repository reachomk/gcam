.class public Lcom/android/camera/ui/controller/PhotoVideoState;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "PhotoVideoState.java"

# interfaces
.implements Lcom/android/camera/ui/controller/VideoRecordingState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>()V

    return-void
.end method


# virtual methods
.method public isRecording()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onStartRecording()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public onStopRecording()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public setVideoMode()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public togglePhotoVideoMode()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method
