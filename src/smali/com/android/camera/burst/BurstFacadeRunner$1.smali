.class final Lcom/android/camera/burst/BurstFacadeRunner$1;
.super Ljava/lang/Object;
.source "BurstFacadeRunner.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstFacadeRunner;->run()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/BurstFacadeRunner;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstFacadeRunner;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeRunner$1;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner$1;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner$1;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$000(Lcom/android/camera/burst/BurstFacadeRunner;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hdrplus/HdrPlusSessionModule;

    invoke-static {v1, p1, v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6AKJLDPN6ASHR9HL62TJ15TM62RJ75TA6GSJFETGM4R357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ5AIA3DTN78SJFDHM6ASHR55B0____(Lcom/android/camera/burst/BurstFacadeRunner;Ljava/lang/Throwable;Lcom/android/camera/hdrplus/HdrPlusSessionModule;)V

    .line 250
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1244
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/UsageStatistics;->getBurstCaptureReportAccumulator()Lcom/android/camera/stats/BurstCaptureReportAccumulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->startedSuccessfully()V

    .line 240
    return-void
.end method
