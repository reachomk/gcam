.class final Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$4$1;
.super Ljava/lang/Object;
.source "AnalysisComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/pipeline/BitmapLoaderSummaryPipeline;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final process()Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;-><init>()V

    .line 181
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;->build()Lcom/google/android/libraries/smartburst/media/Summary;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->createImmediate(Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    return-object v0
.end method

.method public final resume()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public final stop()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public final suspend()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method
