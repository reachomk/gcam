.class public Lcom/android/camera/module/imageintent/event/EventTimerCountDownToZero;
.super Ljava/lang/Object;
.source "EventTimerCountDownToZero.java"


# instance fields
.field private final captureLoggingInfo:Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/camera/module/imageintent/event/EventTimerCountDownToZero;->captureLoggingInfo:Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

    .line 10
    return-void
.end method


# virtual methods
.method public final getCaptureLoggingInfo()Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/module/imageintent/event/EventTimerCountDownToZero;->captureLoggingInfo:Lcom/android/camera/module/imageintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

    return-object v0
.end method
