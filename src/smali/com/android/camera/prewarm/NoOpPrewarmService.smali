.class public Lcom/android/camera/prewarm/NoOpPrewarmService;
.super Landroid/service/media/CameraPrewarmService;
.source "NoOpPrewarmService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private onPrewarmTimeout:Ljava/lang/Runnable;

.field prewarmTimeout:Lcom/google/android/apps/camera/async/Timeout;

.field usageStatistics:Lcom/android/camera/stats/UsageStatistics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "NoOpPrewarmService"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/prewarm/NoOpPrewarmService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/service/media/CameraPrewarmService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/prewarm/NoOpPrewarmService;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/prewarm/NoOpPrewarmService;->onPrewarmTimeout()V

    return-void
.end method

.method private final onPrewarmTimeout()V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/android/camera/prewarm/NoOpPrewarmService;->TAG:Ljava/lang/String;

    const-string v1, "Prewarm timed out! This should not happen."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/prewarm/NoOpPrewarmService;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    invoke-virtual {v0}, Lcom/android/camera/stats/UsageStatistics;->prewarmTimeout()V

    .line 51
    return-void
.end method


# virtual methods
.method public onCooldown(Z)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/prewarm/NoOpPrewarmService;->prewarmTimeout:Lcom/google/android/apps/camera/async/Timeout;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Timeout;->cancel()V

    .line 45
    iget-object v0, p0, Lcom/android/camera/prewarm/NoOpPrewarmService;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/UsageStatistics;->prewarmCooldown(Z)V

    .line 46
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/camera/prewarm/NoOpPrewarmService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/HasCameraAppComponent;

    invoke-interface {v0}, Lcom/android/camera/app/HasCameraAppComponent;->component$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2S3G5T1M2RB5E9GK2S3G8DNMQS3FDPIMST1R()Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/one/v2/OneCameraFactoryProvider;->inject(Lcom/android/camera/prewarm/NoOpPrewarmService;)V

    .line 25
    invoke-super {p0}, Landroid/service/media/CameraPrewarmService;->onCreate()V

    .line 27
    new-instance v0, Lcom/android/camera/prewarm/NoOpPrewarmService$1;

    invoke-direct {v0, p0}, Lcom/android/camera/prewarm/NoOpPrewarmService$1;-><init>(Lcom/android/camera/prewarm/NoOpPrewarmService;)V

    iput-object v0, p0, Lcom/android/camera/prewarm/NoOpPrewarmService;->onPrewarmTimeout:Ljava/lang/Runnable;

    .line 34
    return-void
.end method

.method public onPrewarm()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/prewarm/NoOpPrewarmService;->prewarmTimeout:Lcom/google/android/apps/camera/async/Timeout;

    iget-object v1, p0, Lcom/android/camera/prewarm/NoOpPrewarmService;->onPrewarmTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/Timeout;->start(Ljava/lang/Runnable;)V

    .line 39
    iget-object v0, p0, Lcom/android/camera/prewarm/NoOpPrewarmService;->usageStatistics:Lcom/android/camera/stats/UsageStatistics;

    invoke-virtual {v0}, Lcom/android/camera/stats/UsageStatistics;->prewarmStarted()V

    .line 40
    return-void
.end method
