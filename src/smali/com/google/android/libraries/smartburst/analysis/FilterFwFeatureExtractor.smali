.class public final Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;
.super Ljava/lang/Object;
.source "FilterFwFeatureExtractor.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;
.implements Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;
    }
.end annotation


# instance fields
.field private final mFeatureExtractionGraph:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;

.field private mListener:Lcom/google/android/libraries/smartburst/utils/ThreadListener;

.field private mState:Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;->STOPPED:Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mState:Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;

    .line 37
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mFeatureExtractionGraph:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;

    .line 40
    invoke-virtual {p1, p0}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->setGraphRunnerListener(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$Listener;)V

    .line 41
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->getFeatureWriters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 42
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "FeatureExtractionGraph should have at least one output."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 44
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->getFeatureWriters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/analysis/FeatureTableWriter;

    .line 45
    invoke-interface {v0, p2}, Lcom/google/android/libraries/smartburst/analysis/FeatureTableWriter;->setFeatureTable(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V

    goto :goto_1

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method private static checkExpectedState(Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 51
    if-eq p0, p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x25

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected extractor to be in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " actual: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public final getFeatureCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mFeatureExtractionGraph:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->getFeatureWriters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final onGraphRunnerError(Ljava/lang/Exception;Z)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mListener:Lcom/google/android/libraries/smartburst/utils/ThreadListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mListener:Lcom/google/android/libraries/smartburst/utils/ThreadListener;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/smartburst/utils/ThreadListener;->onError(Ljava/lang/Exception;)V

    .line 101
    :cond_0
    return-void
.end method

.method public final onGraphRunnerStopped(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mListener:Lcom/google/android/libraries/smartburst/utils/ThreadListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mListener:Lcom/google/android/libraries/smartburst/utils/ThreadListener;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/utils/ThreadListener;->onStopped()V

    .line 94
    :cond_0
    return-void
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mFeatureExtractionGraph:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->release()V

    .line 87
    return-void
.end method

.method public final declared-synchronized start(Lcom/google/android/libraries/smartburst/utils/ThreadListener;)V
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mState:Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;

    sget-object v1, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;->STOPPED:Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->checkExpectedState(Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;)V

    .line 71
    sget-object v0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;->RUNNING:Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mState:Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;

    .line 72
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mFeatureExtractionGraph:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->run()V

    .line 73
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mListener:Lcom/google/android/libraries/smartburst/utils/ThreadListener;

    .line 74
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mListener:Lcom/google/android/libraries/smartburst/utils/ThreadListener;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/utils/ThreadListener;->onStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stop()V
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mState:Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;

    sget-object v1, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;->RUNNING:Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->checkExpectedState(Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mFeatureExtractionGraph:Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;->stop()V

    .line 81
    sget-object v0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;->STOPPED:Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;->mState:Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "FilterFwFeatureExtractor"

    return-object v0
.end method
