.class final Lcom/android/camera/one/v2/stats/CaptureFailureLogger;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "CaptureFailureLogger.java"


# instance fields
.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final usageStats:Lcom/android/camera/stats/UsageStatistics;


# direct methods
.method constructor <init>(Lcom/android/camera/stats/UsageStatistics;Lcom/google/android/apps/camera/async/MainThread;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/one/v2/stats/CaptureFailureLogger;->usageStats:Lcom/android/camera/stats/UsageStatistics;

    .line 21
    iput-object p2, p0, Lcom/android/camera/one/v2/stats/CaptureFailureLogger;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/stats/CaptureFailureLogger;)Lcom/android/camera/stats/UsageStatistics;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/CaptureFailureLogger;->usageStats:Lcom/android/camera/stats/UsageStatistics;

    return-object v0
.end method


# virtual methods
.method public final onFailed(Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;)V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;->getReason()I

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/camera/one/v2/stats/CaptureFailureLogger;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/one/v2/stats/CaptureFailureLogger$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/stats/CaptureFailureLogger$1;-><init>(Lcom/android/camera/one/v2/stats/CaptureFailureLogger;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 39
    :cond_0
    return-void
.end method
