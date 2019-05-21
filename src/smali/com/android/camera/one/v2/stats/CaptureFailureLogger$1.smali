.class final Lcom/android/camera/one/v2/stats/CaptureFailureLogger$1;
.super Ljava/lang/Object;
.source "CaptureFailureLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/stats/CaptureFailureLogger;->onFailed(Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/stats/CaptureFailureLogger;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/stats/CaptureFailureLogger;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/camera/one/v2/stats/CaptureFailureLogger$1;->this$0:Lcom/android/camera/one/v2/stats/CaptureFailureLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 31
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/CaptureFailureLogger$1;->this$0:Lcom/android/camera/one/v2/stats/CaptureFailureLogger;

    invoke-static {v0}, Lcom/android/camera/one/v2/stats/CaptureFailureLogger;->access$000(Lcom/android/camera/one/v2/stats/CaptureFailureLogger;)Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "api2_lost_images"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/camera/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;II)V

    .line 36
    return-void
.end method
