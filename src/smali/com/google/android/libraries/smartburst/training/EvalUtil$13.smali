.class final Lcom/google/android/libraries/smartburst/training/EvalUtil$13;
.super Ljava/lang/Object;
.source "EvalUtil.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/training/EvalUtil;->injectPostProcessLogging(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V
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
        "Lcom/google/android/libraries/smartburst/postprocessing/FrameSegmentDistanceMetric;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$frameSegmentDistanceMetricLog:Ljava/io/Writer;


# direct methods
.method constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$13;->val$frameSegmentDistanceMetricLog:Ljava/io/Writer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic wrap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 244
    check-cast p1, Lcom/google/android/libraries/smartburst/postprocessing/FrameSegmentDistanceMetric;

    .line 1248
    new-instance v0, Lcom/google/android/libraries/smartburst/postprocessing/LoggingFrameSegmentDistanceMetric;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$13;->val$frameSegmentDistanceMetricLog:Ljava/io/Writer;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/libraries/smartburst/postprocessing/LoggingFrameSegmentDistanceMetric;-><init>(Lcom/google/android/libraries/smartburst/postprocessing/FrameSegmentDistanceMetric;Ljava/lang/String;Ljava/io/Writer;)V

    .line 244
    return-object v0
.end method
