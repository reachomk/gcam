.class final Lcom/android/camera/one/v2/stats/ViewfinderStartupRecorder;
.super Ljava/lang/Object;
.source "ViewfinderStartupRecorder.java"

# interfaces
.implements Lcom/android/camera/one/v2/stats/ViewfinderFrameSequencer$SequentialFrameProcessor;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final viewfinderJankSession:Lcom/android/camera/stats/ViewfinderJankSession;


# direct methods
.method constructor <init>(Lcom/android/camera/stats/ViewfinderJankSession;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/one/v2/stats/ViewfinderStartupRecorder;->viewfinderJankSession:Lcom/android/camera/stats/ViewfinderJankSession;

    .line 24
    return-void
.end method


# virtual methods
.method public final onFrame(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;DD)V
    .locals 6

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/ViewfinderStartupRecorder;->viewfinderJankSession:Lcom/android/camera/stats/ViewfinderJankSession;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/ViewfinderJankSession;->recordStartupFrame(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;DD)V

    .line 30
    return-void
.end method
