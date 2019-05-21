.class public final Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BottomBarUISpec"
.end annotation


# instance fields
.field public cameraCallback:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

.field public cancelCallback:Landroid/view/View$OnClickListener;

.field public defaultHfrVideoMode:Lcom/android/camera/camcorder/CamcorderCaptureRate;

.field public doneCallback:Landroid/view/View$OnClickListener;

.field public enableCamera:Z

.field public enableSelfieFlash:Z

.field public hfrModeCallback:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

.field public hideCamera:Z

.field public isExposureCompensationSupported:Z

.field public isHfr240FpsSupported:Z

.field public isPauseResumeSupported:Z

.field public isVideoSnapshotSupported:Z

.field public retakeCallback:Landroid/view/View$OnClickListener;

.field public reviewCallback:Landroid/view/View$OnClickListener;

.field public showCancel:Z

.field public showDone:Z

.field public showRetake:Z

.field public showReview:Z

.field public showToyboxHfrMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showToyboxHfrMode:Z

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
