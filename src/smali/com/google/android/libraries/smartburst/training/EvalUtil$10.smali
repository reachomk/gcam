.class final Lcom/google/android/libraries/smartburst/training/EvalUtil$10;
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
        "Lcom/google/android/libraries/smartburst/buffers/FeatureTable;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$featureAdditionLog:Ljava/io/Writer;


# direct methods
.method constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$10;->val$featureAdditionLog:Ljava/io/Writer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic wrap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 195
    check-cast p1, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 1198
    new-instance v0, Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$10;->val$featureAdditionLog:Ljava/io/Writer;

    .line 1199
    invoke-static {}, Lcom/google/android/libraries/smartburst/concurrency/EvenMoreExecutors;->direct()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/libraries/smartburst/buffers/LoggingFeatureTable;-><init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Ljava/io/Writer;Ljava/util/concurrent/Executor;)V

    .line 195
    return-object v0
.end method
