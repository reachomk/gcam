.class public final Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;
.super Ljava/lang/Object;
.source "LoggingChainedResegmenter.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;


# instance fields
.field private final mChainedSegmenter:Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;

.field private final mName:Ljava/lang/String;

.field private final mWriter:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->mChainedSegmenter:Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;

    .line 39
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->mName:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->mWriter:Ljava/io/Writer;

    .line 41
    return-void
.end method

.method private final applyChainAndLog(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 59
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->mName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "NEW CHAIN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 60
    invoke-static {p1, v1}, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->writeSegments(Ljava/util/List;Ljava/io/Writer;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->mChainedSegmenter:Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;->getSegmenters()[Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 66
    invoke-static {v4}, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->shortNameFor(Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x17

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "  Applying Segmenter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-virtual {v1, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 67
    invoke-interface {v4, p1}, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;->resegment(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 68
    invoke-static {p1, v1}, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->writeSegments(Ljava/util/List;Ljava/io/Writer;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    const-string v0, "CHAIN END. Final Result:\n"

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 73
    invoke-static {p1, v1}, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->writeSegments(Ljava/util/List;Ljava/io/Writer;)V

    .line 74
    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->mWriter:Ljava/io/Writer;

    monitor-enter v2

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 79
    monitor-exit v2

    .line 81
    return-object p1

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static shortNameFor(Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 91
    instance-of v0, p0, Lcom/google/android/libraries/smartburst/segmentation/segmenters/CachedResegmenter;

    if-eqz v0, :cond_0

    .line 92
    check-cast p0, Lcom/google/android/libraries/smartburst/segmentation/segmenters/CachedResegmenter;

    .line 93
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/segmentation/segmenters/CachedResegmenter;->getResegmenter()Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " (cached)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 94
    :cond_0
    instance-of v0, p0, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;

    if-eqz v0, :cond_1

    .line 95
    check-cast p0, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;

    .line 96
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->mChainedSegmenter:Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->shortNameFor(Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->mName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static writeSegments(Ljava/util/List;Ljava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;",
            ">;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "    > [EMPTY SEGMENT LIST]\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    .line 109
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "    > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 110
    const-string v2, "      [\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "        timestamp: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_1
    const-string v0, "      ]\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    return-void
.end method


# virtual methods
.method public final resegment(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->applyChainAndLog(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    const-string v0, "LoggingChainedResegmenter"

    const-string v1, "Cannot log segmentation chain. Reverting back to standard implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/LoggingChainedResegmenter;->mChainedSegmenter:Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;->resegment(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
