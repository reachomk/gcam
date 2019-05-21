.class final Lcom/google/android/libraries/smartburst/training/EvalUtil$4;
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
        "Lcom/google/android/libraries/smartburst/scoring/FeatureTableFrameScorer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$featureLog:Lcom/google/android/libraries/smartburst/training/ValueLog;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/training/ValueLog;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$4;->val$featureLog:Lcom/google/android/libraries/smartburst/training/ValueLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic wrap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 121
    check-cast p1, Lcom/google/android/libraries/smartburst/scoring/FeatureTableFrameScorer;

    .line 1125
    new-instance v0, Lcom/google/android/libraries/smartburst/training/EvalUtil$FeatureTableFrameScorerLogger;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$4;->val$featureLog:Lcom/google/android/libraries/smartburst/training/ValueLog;

    invoke-direct {v0, p1, v1}, Lcom/google/android/libraries/smartburst/training/EvalUtil$FeatureTableFrameScorerLogger;-><init>(Lcom/google/android/libraries/smartburst/scoring/FeatureTableFrameScorer;Lcom/google/android/libraries/smartburst/training/ValueLog;)V

    .line 121
    return-object v0
.end method
