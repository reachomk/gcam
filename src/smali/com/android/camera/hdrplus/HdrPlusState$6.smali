.class final Lcom/android/camera/hdrplus/HdrPlusState$6;
.super Lcom/google/googlex/gcam/ProgressCallback;
.source "HdrPlusState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hdrplus/HdrPlusState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/hdrplus/HdrPlusState;


# direct methods
.method constructor <init>(Lcom/android/camera/hdrplus/HdrPlusState;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusState$6;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    invoke-direct {p0}, Lcom/google/googlex/gcam/ProgressCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final Run(IF)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusState$6;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v1, v0, Lcom/android/camera/hdrplus/HdrPlusState;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusState$6;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v0, v0, Lcom/android/camera/hdrplus/HdrPlusState;->inFlightShots:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hdrplus/InFlightShotParameters;

    .line 189
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFA1KM6T3LE9IL8OBBCLP28K31E9GMQPBKCLP76EO_()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getProcessingProgress()Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;->updateProgress(F)V

    .line 193
    :cond_0
    return-void

    .line 189
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
