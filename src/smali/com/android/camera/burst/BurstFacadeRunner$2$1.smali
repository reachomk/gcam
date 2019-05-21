.class final Lcom/android/camera/burst/BurstFacadeRunner$2$1;
.super Ljava/lang/Object;
.source "BurstFacadeRunner.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstFacadeRunner$2;
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
.field private synthetic this$1:Lcom/android/camera/burst/BurstFacadeRunner$2;

.field private synthetic val$reportAccumulator:Lcom/android/camera/stats/BurstCaptureReportAccumulator;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstFacadeRunner$2;Lcom/android/camera/stats/BurstCaptureReportAccumulator;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeRunner$2$1;->this$1:Lcom/android/camera/burst/BurstFacadeRunner$2;

    iput-object p2, p0, Lcom/android/camera/burst/BurstFacadeRunner$2$1;->val$reportAccumulator:Lcom/android/camera/stats/BurstCaptureReportAccumulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner$2$1;->this$1:Lcom/android/camera/burst/BurstFacadeRunner$2;

    iget-object v0, v0, Lcom/android/camera/burst/BurstFacadeRunner$2;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    .line 310
    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$000(Lcom/android/camera/burst/BurstFacadeRunner;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hdrplus/HdrPlusSessionModule;

    .line 311
    invoke-virtual {v0}, Lcom/android/camera/hdrplus/HdrPlusSessionModule;->reEnableUI()V

    .line 312
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner$2$1;->val$reportAccumulator:Lcom/android/camera/stats/BurstCaptureReportAccumulator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->stopped(Z)V

    .line 313
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 298
    .line 1301
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner$2$1;->this$1:Lcom/android/camera/burst/BurstFacadeRunner$2;

    iget-object v0, v0, Lcom/android/camera/burst/BurstFacadeRunner$2;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    .line 1302
    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$000(Lcom/android/camera/burst/BurstFacadeRunner;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hdrplus/HdrPlusSessionModule;

    .line 1303
    invoke-virtual {v0}, Lcom/android/camera/hdrplus/HdrPlusSessionModule;->reEnableUI()V

    .line 1304
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner$2$1;->val$reportAccumulator:Lcom/android/camera/stats/BurstCaptureReportAccumulator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->stopped(Z)V

    .line 298
    return-void
.end method
