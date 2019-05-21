.class public final Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;
.super Ljava/lang/Object;
.source "FeatureExtractionGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;
    }
.end annotation


# instance fields
.field private final mFeatureWriters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/analysis/FeatureTableWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;


# direct methods
.method protected constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/analysis/FeatureTableWriter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    .line 41
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->mFeatureWriters:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public final getFeatureWriters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/analysis/FeatureTableWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->mFeatureWriters:Ljava/util/List;

    return-object v0
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->stop()V

    .line 98
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->tearDown()V

    .line 99
    return-void
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->run()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    .line 82
    return-void
.end method

.method public final setGraphRunnerListener(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$Listener;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->setListener(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$Listener;)V

    .line 91
    return-void
.end method

.method public final stop()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getFilter(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;

    .line 74
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;->forceClose()V

    .line 75
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    const-string v0, "FeatureExtractionGraph[target-count="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->mFeatureWriters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
