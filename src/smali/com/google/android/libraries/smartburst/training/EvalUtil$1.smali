.class final Lcom/google/android/libraries/smartburst/training/EvalUtil$1;
.super Ljava/lang/Object;
.source "EvalUtil.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/training/EvalUtil;->injectCaptureLogging(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper",
        "<",
        "Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$1;->val$logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic wrap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 83
    check-cast p1, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    .line 1086
    new-instance v0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;-><init>(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;)V

    .line 1087
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$1;->val$logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    const-string v2, "frame_grabs.csv"

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->getGrabLogWriter()Lcom/google/android/libraries/smartburst/training/LogWriter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->addLogWriter(Ljava/lang/String;Lcom/google/android/libraries/smartburst/training/LogWriter;)V

    .line 1088
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$1;->val$logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    const-string v2, "decoder_stats.txt"

    .line 1089
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->getStatsReportWriter()Lcom/google/android/libraries/smartburst/training/LogWriter;

    move-result-object v3

    .line 1088
    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->addLogWriter(Ljava/lang/String;Lcom/google/android/libraries/smartburst/training/LogWriter;)V

    .line 83
    return-object v0
.end method
