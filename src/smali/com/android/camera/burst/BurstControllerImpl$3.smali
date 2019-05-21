.class final Lcom/android/camera/burst/BurstControllerImpl$3;
.super Lcom/google/android/libraries/smartburst/utils/VoidFunction;
.source "BurstControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstControllerImpl;->processBurstResults(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/utils/VoidFunction",
        "<",
        "Lcom/google/android/libraries/smartburst/media/Summary",
        "<",
        "Lcom/android/camera/burst/HiResImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/BurstControllerImpl;

.field private synthetic val$imageProcessor:Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstControllerImpl;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/camera/burst/BurstControllerImpl$3;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    iput-object p2, p0, Lcom/android/camera/burst/BurstControllerImpl$3;->val$imageProcessor:Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/VoidFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 351
    check-cast p1, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 1354
    invoke-static {}, Lcom/android/camera/burst/BurstControllerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processBurstResults : stopping previewer"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$3;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "BurstControllerImpl#processBurstResults_stopPreview"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 1357
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$3;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$300(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/burst/SmartBurstPreviewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/burst/SmartBurstPreviewer;->stop()V

    .line 1358
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$3;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$300(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/burst/SmartBurstPreviewer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/media/Summary;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/SmartBurstPreviewer;->showCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$3;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 1363
    invoke-static {}, Lcom/android/camera/burst/BurstControllerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processBurstResults : populating results"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$3;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "BurstControllerImpl#processBurstResults_populateResults"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 1366
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$3;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    iget-object v1, p0, Lcom/android/camera/burst/BurstControllerImpl$3;->val$imageProcessor:Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/burst/BurstControllerImpl;->stopAndPopulateResults(Lcom/google/android/libraries/smartburst/media/Summary;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1368
    iget-object v0, p0, Lcom/android/camera/burst/BurstControllerImpl$3;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 1369
    return-void

    .line 1360
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/burst/BurstControllerImpl$3;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v1}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0

    .line 1368
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/burst/BurstControllerImpl$3;->this$0:Lcom/android/camera/burst/BurstControllerImpl;

    invoke-static {v1}, Lcom/android/camera/burst/BurstControllerImpl;->access$200(Lcom/android/camera/burst/BurstControllerImpl;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0
.end method
