.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$countDownDuration:I

.field private synthetic val$event:Lcom/android/camera/module/imageintent/event/EventTapOnShutterButton;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/event/EventTapOnShutterButton;I)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$1;->val$event:Lcom/android/camera/module/imageintent/event/EventTapOnShutterButton;

    iput p2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$1;->val$countDownDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCountDownDuration()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$1;->val$countDownDuration:I

    return v0
.end method

.method public final getTouchPointInsideShutterButton()Lcom/google/android/apps/camera/uiutils/TouchCoordinate;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$5$1;->val$event:Lcom/android/camera/module/imageintent/event/EventTapOnShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/event/EventTapOnShutterButton;->getTouchCoordinate()Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    move-result-object v0

    return-object v0
.end method
