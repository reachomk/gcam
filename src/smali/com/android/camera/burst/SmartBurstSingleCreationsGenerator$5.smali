.class final Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$5;
.super Lcom/google/android/libraries/smartburst/utils/VoidFunction;
.source "SmartBurstSingleCreationsGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->generateCreationAsync(Lcom/android/camera/burst/postprocessing/CreationType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/utils/VoidFunction",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/android/camera/burst/postprocessing/CreationType;",
        "Lcom/google/android/libraries/smartburst/artifacts/Artifact;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

.field private synthetic val$type:Lcom/android/camera/burst/postprocessing/CreationType;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;Lcom/android/camera/burst/postprocessing/CreationType;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$5;->this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

    iput-object p2, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$5;->val$type:Lcom/android/camera/burst/postprocessing/CreationType;

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/VoidFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 196
    check-cast p1, Ljava/util/Map;

    .line 1199
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$5;->this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

    invoke-static {v0}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->access$600(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Lcom/android/camera/processing/ProcessingServiceManager;

    move-result-object v8

    new-instance v0, Lcom/android/camera/burst/postprocessing/GenerateSingleArtifactTask;

    iget-object v1, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$5;->this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

    .line 1201
    invoke-static {v1}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->access$200(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$5;->this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

    .line 1202
    invoke-static {v2}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->access$300(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$5;->val$type:Lcom/android/camera/burst/postprocessing/CreationType;

    .line 1203
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/smartburst/artifacts/Artifact;

    iget-object v4, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$5;->this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

    .line 1204
    invoke-static {v4}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->access$400(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    move-result-object v4

    new-instance v5, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator;

    invoke-direct {v5}, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator;-><init>()V

    .line 1206
    invoke-static {}, Lcom/android/camera/burst/BurstExecutorFactory;->executorForSingleArtifactGeneration()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$5;->this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

    .line 1207
    invoke-static {v7}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->access$500(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Lcom/android/camera/storage/Storage;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/burst/postprocessing/GenerateSingleArtifactTask;-><init>(Lcom/android/camera/session/CaptureSessionManager;Ljava/io/File;Lcom/google/android/libraries/smartburst/artifacts/Artifact;Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/util/concurrent/Executor;Lcom/android/camera/storage/Storage;)V

    .line 1199
    invoke-virtual {v8, v0}, Lcom/android/camera/processing/ProcessingServiceManager;->enqueueTask(Lcom/android/camera/processing/ProcessingTask;)V

    .line 196
    return-void
.end method
