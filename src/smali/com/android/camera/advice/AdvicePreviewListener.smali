.class final Lcom/android/camera/advice/AdvicePreviewListener;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "AdvicePreviewListener.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private final adviceManger:Lcom/android/camera/advice/AdviceManager;

.field private final executor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

.field private final imageRetrievalTask:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdvisingImageSaver;",
            ">;"
        }
    .end annotation
.end field

.field private latestSampledFrame:J


# direct methods
.method public constructor <init>(Lcom/android/camera/advice/AdviceManager;Lcom/android/camera/one/v2/command/CameraCommandExecutor;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/advice/AdviceManager;",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdvisingImageSaver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/android/camera/advice/AdvicePreviewListener;->executor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    .line 34
    iput-object p1, p0, Lcom/android/camera/advice/AdvicePreviewListener;->adviceManger:Lcom/android/camera/advice/AdviceManager;

    .line 35
    iput-object p3, p0, Lcom/android/camera/advice/AdvicePreviewListener;->imageRetrievalTask:Ljavax/inject/Provider;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/advice/AdvicePreviewListener;->latestSampledFrame:J

    .line 38
    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 5

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/advice/AdvicePreviewListener;->adviceManger:Lcom/android/camera/advice/AdviceManager;

    invoke-interface {v0}, Lcom/android/camera/advice/AdviceManager;->hasActivePreviewAdvice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/advice/AdvicePreviewListener;->latestSampledFrame:J

    iget-object v4, p0, Lcom/android/camera/advice/AdvicePreviewListener;->adviceManger:Lcom/android/camera/advice/AdviceManager;

    .line 46
    invoke-interface {v4}, Lcom/android/camera/advice/AdviceManager;->getCurrentSamplingFrequency()I

    move-result v4

    .line 43
    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->shouldSampleCurrentFrame(JJI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1057
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1060
    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 48
    :goto_0
    if-eqz v0, :cond_1

    .line 49
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/advice/AdvicePreviewListener;->latestSampledFrame:J

    .line 50
    iget-object v1, p0, Lcom/android/camera/advice/AdvicePreviewListener;->executor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    iget-object v0, p0, Lcom/android/camera/advice/AdvicePreviewListener;->imageRetrievalTask:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/command/CameraCommand;

    invoke-virtual {v1, v0}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->execute(Lcom/android/camera/one/v2/command/CameraCommand;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 53
    :cond_1
    return-void

    .line 1060
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
