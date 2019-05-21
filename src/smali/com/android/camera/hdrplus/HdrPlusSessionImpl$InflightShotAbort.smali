.class final Lcom/android/camera/hdrplus/HdrPlusSessionImpl$InflightShotAbort;
.super Ljava/lang/Object;
.source "HdrPlusSessionImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hdrplus/HdrPlusSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InflightShotAbort"
.end annotation


# instance fields
.field private final burstId:I

.field private synthetic this$0:Lcom/android/camera/hdrplus/HdrPlusSessionImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/hdrplus/HdrPlusSessionImpl;I)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl$InflightShotAbort;->this$0:Lcom/android/camera/hdrplus/HdrPlusSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput p2, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl$InflightShotAbort;->burstId:I

    .line 695
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl$InflightShotAbort;->this$0:Lcom/android/camera/hdrplus/HdrPlusSessionImpl;

    invoke-static {v0}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->access$000(Lcom/android/camera/hdrplus/HdrPlusSessionImpl;)Lcom/android/camera/hdrplus/HdrPlusState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/hdrplus/HdrPlusState;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 700
    :try_start_0
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl$InflightShotAbort;->burstId:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Aborting in-flight session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl$InflightShotAbort;->this$0:Lcom/android/camera/hdrplus/HdrPlusSessionImpl;

    invoke-static {v0}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->access$000(Lcom/android/camera/hdrplus/HdrPlusSessionImpl;)Lcom/android/camera/hdrplus/HdrPlusState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/hdrplus/HdrPlusState;->inFlightShots:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl$InflightShotAbort;->burstId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hdrplus/InFlightShotParameters;

    .line 702
    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0}, Lcom/android/camera/hdrplus/InFlightShotParameters;->getProcessingTask()Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->unblock()V

    .line 708
    :goto_0
    monitor-exit v1

    return-void

    .line 705
    :cond_0
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusSessionImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/hdrplus/HdrPlusSessionImpl$InflightShotAbort;->burstId:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x48

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Aborting in-flight session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed, shot no longer in flight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
