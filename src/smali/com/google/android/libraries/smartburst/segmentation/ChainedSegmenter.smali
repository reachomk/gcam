.class public final Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;
.super Ljava/lang/Object;
.source "ChainedSegmenter.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;


# instance fields
.field private final mSegmenters:[Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;


# direct methods
.method private constructor <init>([Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;->mSegmenters:[Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    .line 27
    return-void
.end method

.method public static varargs of([Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;)Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;-><init>([Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;)V

    return-object v0
.end method


# virtual methods
.method public final getSegmenters()[Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;->mSegmenters:[Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    return-object v0
.end method

.method public final resegment(Ljava/util/List;)Ljava/util/List;
    .locals 4
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
    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;->mSegmenters:[Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 58
    invoke-interface {v3, p1}, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;->resegment(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 65
    const-string v0, "ChainedSegmenter[segmenters="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;->mSegmenters:[Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
